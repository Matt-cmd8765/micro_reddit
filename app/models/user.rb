class User < ApplicationRecord
  has_many :posts
  has_many :comments
    
  validates :username, length: { in: 1..100 }, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :password, length: { minimum: 6 }
end
