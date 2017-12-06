# frozen_string_literal: true

FactoryBot.define do
  factory :symptom_type, class: SymptomType do
    sequence(:name){|n| "A Name#{n}" }
    description 'My description'
  end
end
