class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


# Pour que le nom sois demander dans le fomrulaire d'inscription
validates :fullname, presence: true, length: {maximum: 65}







end
