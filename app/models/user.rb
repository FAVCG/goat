class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_animals, foreign_key: 'user_id', class_name: 'Animal', dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :booked_animals, through: :bookings, source: :animal, dependent: :destroy

end
