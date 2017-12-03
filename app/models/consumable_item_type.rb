class ConsumableItemType < ApplicationRecord
  has_many :consumable_items, dependent: :destroy
  validates :name, presence: true, length: { minimum: 5,
    too_short: "%{count} characters is the minimum length of the type name" }
end
