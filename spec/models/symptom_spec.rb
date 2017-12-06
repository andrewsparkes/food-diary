# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Symptom, type: :model do
  it 'has a valid factory' do
    expect(build(:symptom)).to be_valid
  end

  it 'is invalid if the name is not present' do
    expect(build(:symptom, name: nil)).to_not be_valid
  end

  it 'is invalid if the name is too short' do
    expect(build(:symptom, name: 'Shrt')).to_not be_valid
  end

  it 'is valid if the notes are not present' do
    expect(build(:symptom, notes: nil)).to be_valid
  end

  it 'is invalid for two items to have the same name' do
    symptom1 = create(:symptom, name: 'SameName')
    symptom2 = build(:symptom, name: 'SameName')
    expect(symptom2).to_not be_valid
  end

  it 'has a type' do
    symptom = build(:symptom)
    expect(symptom.symptom_type).to be_valid
  end
end
