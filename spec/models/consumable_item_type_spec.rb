# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ConsumableItemType, type: :model do
  it 'has a valid factory' do
    expect(create(:consumable_item_type)).to be_valid
  end

  it 'is invalid if the name is not present' do
    expect(build(:consumable_item_type, name: nil)).to_not be_valid
  end

  it 'is invalid if the name is too short' do
    expect(build(:consumable_item_type, name: 'Shrt')).to_not be_valid
  end

  it 'is valid if the description is not present' do
    expect(build(:consumable_item_type, description: nil)).to be_valid
  end

  it 'is invalid for two types to have the same name' do
    type1 = create(:consumable_item_type, name: 'SameName')
    type2 = build(:consumable_item_type, name: 'SameName')
    expect(type2).to_not be_valid
  end
end



# # Prefix class methods with a '.'
# describe User, '.active' do
#   it 'returns only active users' do
#     # setup
#     active_user = create(:user, active: true)
#     non_active_user = create(:user, active: false)

#     # exercise
#     result = User.active

#     # verify
#     expect(result).to eq [active_user]

#     # teardown is handled for you by RSpec
#   end
# end

# # Prefix instance methods with a '#'
# describe User, '#name' do
#   it 'returns the concatenated first and last name' do
#     # setup
#     user = build(:user, first_name: 'Josh', last_name: 'Steiner')

#     # excercise and verify
#     expect(user.name).to eq 'Josh Steiner'
#   end
# end
