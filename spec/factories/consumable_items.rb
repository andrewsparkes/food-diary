# frozen_string_literal: true

FactoryBot.define do
  factory :consumable_item, class: ConsumableItem do
    name 'MyString'
    consumable_item_type { create(:consumable_item_type) }
    approx_calories 1
    notes 'MyText'
  end
end
