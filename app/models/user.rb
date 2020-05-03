class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, length: { minimum:3, maximum:12 }, uniqueness: true
  has_many :posts
  has_one :detail, :dependent => :destroy
  has_many :comments
  has_one_attached :avatar
end
