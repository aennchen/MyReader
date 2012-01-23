class User < ActiveRecord::Base
  has_many :ratings
  has_many :categories
  has_many :user_sources, through: :categories
  has_many :available_sources, through: :user_sources
  has_many :articles, through: :available_sources

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
end
