class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :foods, dependent: :destroy #this is for create food post
  has_many :favorites, dependent: :destroy
  has_many :foods, through: :favorites


end
