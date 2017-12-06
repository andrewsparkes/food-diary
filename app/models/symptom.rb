# frozen_string_literal: true

# Documentation: Model for a Symptom.
class Symptom < ApplicationRecord
  belongs_to :symptom_type
  # rubocop:disable Style/FormatStringToken
  validates :name, presence: true, length: { \
    minimum: 5,
    too_short: ': The minimum length of the name is %{count} characters'
  }
  # rubocop:enable
  validates :name, uniqueness: true
  validates :symptom_type_id, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
