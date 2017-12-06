# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ConsumableItem, type: :model do
  it 'has a valid factory' do
    expect(build(:consumable_item)).to be_valid
  end

  it 'is invalid if the name is not present' do
    expect(build(:consumable_item, name: nil)).to_not be_valid
  end

  it 'is invalid if the name is too short' do
    expect(build(:consumable_item, name: 'Shrt')).to_not be_valid
  end

  it 'is valid if the notes are not present' do
    expect(build(:consumable_item, notes: nil)).to be_valid
  end

  it 'is invalid for two items to have the same name' do
    item1 = create(:consumable_item, name: 'SameName')
    item2 = build(:consumable_item, name: 'SameName')
    expect(item2).to_not be_valid
  end

  it 'has a type' do
    item = build(:consumable_item)
    expect(item.consumable_item_type).to be_valid
  end
end
