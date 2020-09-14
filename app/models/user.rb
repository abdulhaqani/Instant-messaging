class User < ApplicationRecord
  validates :username, presence: true, length: {minimum: 6, maximum: 32 }
  has_secure_password
  has_many :messages
end
