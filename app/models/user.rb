class User < ApplicationRecord
  validates :email, :username, :password, presence: true
  has_many :posts
  has_many :comment
  has_many :message

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
