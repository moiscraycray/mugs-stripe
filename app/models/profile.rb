class Profile < ApplicationRecord
  belongs_to :user

  validates :username, presence: true, length: {minimum: 3, maximum: 50 }
  validates :address, presence: true, length: {minimum: 5, maximum: 255 }
end
