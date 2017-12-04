# frozen_string_literal: true

FactoryGirl.define do
  factory :symptom do
    name 'MyString'
    start_time '2017-12-03 18:34:23'
    end_time '2017-12-03 18:34:23'
    description 'MyText'
    symptom_type nil
  end
end
