 class Animal < ApplicationRecord
  # owner
  belongs_to :user
  # the one who rents
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :name, presence: true
  validates :type, presence: true
  validates :price, presence: true

  validates :description, presence: true
end
