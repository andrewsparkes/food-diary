# frozen_string_literal: true

FactoryBot.define do
  factory :symptom, class: Symptom do
    name 'MyString'
    symptom_type { create(:symptom_type) }
    start_time '2017-12-03 18:34:23'
    end_time '2017-12-03 18:34:23'
    description 'MyText'
  end
end
