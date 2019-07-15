class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :animal
  has_many :reviews

  validates :date, presence: true
end
