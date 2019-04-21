class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates_presence_of :kind
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
