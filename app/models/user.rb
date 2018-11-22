class User < ApplicationRecord
  validates :email, :username, :password, presence: true
  has_many :posts
  has_many :comment

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
