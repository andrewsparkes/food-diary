# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SymptomType, type: :model do
  it 'has a valid factory' do
    expect(create(:symptom_type)).to be_valid
  end

  it 'is invalid if the name is not present' do
    expect(build(:symptom_type, name: nil)).to_not be_valid
  end

  it 'is invalid if the name is too short' do
    expect(build(:symptom_type, name: 'Shrt')).to_not be_valid
  end

  it 'is valid if the description is not present' do
    expect(build(:symptom_type, description: nil)).to be_valid
  end

  it 'is invalid for two types to have the same name' do
    type1 = create(:symptom_type, name: 'SameName')
    type2 = build(:symptom_type, name: 'SameName')
    expect(type2).to_not be_valid
  end
end
