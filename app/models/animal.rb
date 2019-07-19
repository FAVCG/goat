 class Animal < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # owner
  belongs_to :user
  # the one who rents
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :name, presence: true
  validates :animal_type, presence: true
  validates :price, presence: true

  validates :description, presence: true
  mount_uploader :photo, PhotoUploader


  def self.types
    self.distinct.pluck(:animal_type)
  end
end
