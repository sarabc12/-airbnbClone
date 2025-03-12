class Flat < ApplicationRecord
  belongs_to :user

  has_many_attached :pictures
  # validates :title, presence: true
  # validates :description, presence: true
  # validates :address, presence: true
end
