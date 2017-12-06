# frozen_string_literal: true

FactoryBot.define do
  factory :consumable_item, class: ConsumableItem do    
    sequence(:name){|n| "A Name#{n}" }
    consumable_item_type { create(:consumable_item_type) }
    approx_calories 1
    notes 'My notes'
  end
end
