# frozen_string_literal: true

FactoryBot.define do
  factory :consumable_item_type, class: ConsumableItemType do
    name 'MyString'
    description 'MyText'
  end
end
