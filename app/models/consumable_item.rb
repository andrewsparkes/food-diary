class ConsumableItem < ApplicationRecord

  validates :name, presence: true, length: { minimum: 5,
    too_short: "%{count} characters is the minimum length of a name" }

  validates :approx_calories, presence: true, numericality: { only_integer: true }

end
