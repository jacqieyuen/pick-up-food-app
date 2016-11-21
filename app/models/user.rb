class User < ActiveRecord::Base
  # Include default devise modules.

  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :orders
  validates :email, uniqueness: true, presence: true
end
