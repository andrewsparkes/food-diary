class ConsumableItem < ApplicationRecord
  belongs_to :consumable_item_type
  validates :name, presence: true, length: { minimum: 5,
    too_short: "%{count} characters is the minimum length of a name" }
  validates :consumable_item_type_id, presence: true
  validates :approx_calories, presence: true, numericality: { only_integer: true }
end
