class User < ApplicationRecord
  has_many :bookings
  has_many :flats

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone_num, presence: true, uniqueness: true, format: { with: /\A\d{10,15}\z/, message: “must be between 10 to 15 digits” }
  validates :password, presence: true, length: { in: 5..10 }, format: { with: /\A\d{5,10}\z/, message: “must be between 5 to 10 digits” }
end
