# frozen_string_literal: true

FactoryBot.define do
  factory :symptom_type, class: SymptomType do
    name 'MyString'
    description 'MyText'
  end
end
