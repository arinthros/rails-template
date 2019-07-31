class Person < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :registerable and :omniauthable
  devise :masqueradable, :database_authenticatable, :recoverable, :rememberable, :validatable, :omniauthable

  has_person_name

end
