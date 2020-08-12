class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: %w(chinese japanese french belgian italian), message: "%{value} is not a valid category" }
  validates :phone_number, length: { minimum: 7 }
end
