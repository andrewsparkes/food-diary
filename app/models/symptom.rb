class Symptom < ApplicationRecord
  belongs_to :symptom_type
  validates :name, presence: true, length: { minimum: 5,
    too_short: "%{count} characters is the minimum length of a name" }
  validates :symptom_type_id, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
