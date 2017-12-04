# frozen_string_literal: true

# Documentation: Model for a Consumable item type.
class ConsumableItemType < ApplicationRecord
  has_many :consumable_items, dependent: :destroy
  # rubocop:disable Style/FormatStringToken
  validates :name, presence: true, length: { \
    minimum: 5,
    too_short: ': The minimum length of the type name is %{count} characters'
  }
  # rubocop:enable
end
