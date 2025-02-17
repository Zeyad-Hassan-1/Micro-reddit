class User < ApplicationRecord
  has_many :posts
  has_many :comments , through: :posts
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "must be a string" }
  validates :mail, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email format" }
  validates :password, presence: true
end
