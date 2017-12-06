# frozen_string_literal: true

FactoryBot.define do
  factory :symptom, class: Symptom do
    sequence(:name){|n| "A Name#{n}" }
    symptom_type { create(:symptom_type) }
    start_time { 1.days.ago }
    end_time { DateTime.now }
    notes 'My notes'
  end
end
