class SymptomType < ApplicationRecord
  has_many :symptoms, dependent: :destroy
  validates :name, presence: true, length: { minimum: 5,
    too_short: "%{count} characters is the minimum length of the type name" }
end
