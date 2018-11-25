class Post < ApplicationRecord
  validates :user, :title, :body, presence: true
  belongs_to :user
  has_many :comment
end
