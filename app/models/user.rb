class User < ApplicationRecord
  validates :email, :username, :password, presence: true
  has_many :posts
  has_many :comment
  has_many :message

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_messageable

  # These methods are required by the Mailboxer gem.
  #
  # 'name simply returns the username
  def name
    return self.username
  end

  # This method returns the user's email
  def mailboxer_email(object)
    return self.email
  end
end
