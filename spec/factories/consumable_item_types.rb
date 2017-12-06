# frozen_string_literal: true

FactoryBot.define do
  factory :consumable_item_type, class: ConsumableItemType do
    sequence(:name){|n| "A Name#{n}" }
    description 'My description'
  end
end
