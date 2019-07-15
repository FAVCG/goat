 class Animal < ApplicationRecord
  # owner
  belongs_to :user
  # the one who rents
  belongs_to :user, through: :bookings, dependent: :destroy
  belongs_to :booking
  has_many :reviews, through: :bookings
end
