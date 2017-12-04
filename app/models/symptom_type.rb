# frozen_string_literal: true

# Documentation: Model for a Symptom type.
class SymptomType < ApplicationRecord
  has_many :symptoms, dependent: :destroy
  # rubocop:disable Style/FormatStringToken
  validates :name, presence: true, length: { \
    minimum: 5,
    too_short: ': The minimum length of the type name is %{count} characters'
  }
  # rubocop:enable
end
