class Review < ApplicationRecord
  belongs_to :restaurant

  # validates :rating, inclusion: { in: %w('1..5'), message: "%{value} is not a valid rating, should be between 1 & 5" }
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :content, presence: true
end
