# frozen_string_literal: true

# Documentation: Model for a Consumable item.
class ConsumableItem < ApplicationRecord
  belongs_to :consumable_item_type
  # rubocop:disable Style/FormatStringToken
  validates :name, presence: true, length: { \
    minimum: 5,
    too_short: ': The minimum length of the name is %{count} characters'
  }
  # rubocop:enable
  validates :consumable_item_type_id, presence: true
  validates :approx_calories, presence: true, numericality: { \
    only_integer: true
  }
end
