class Flat < ApplicationRecord
  belongs_to :user
  has_many_attached :pictures
  has_many :bookings
  
  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :status, presence: true, inclusion: { in: [true, false] }
end
