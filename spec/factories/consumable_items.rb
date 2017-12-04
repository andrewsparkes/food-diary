# frozen_string_literal: true

FactoryGirl.define do
  factory :consumable_item do
    name 'MyString'
    approx_calories 1
    notes 'MyText'
  end
end
