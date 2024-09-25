class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # Validations
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, format: { with: /\A[\d\s\-\+\(\)]+\z/, message: "must be a valid phone number" }
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian], message: "%{value} is not a valid category" }
end
