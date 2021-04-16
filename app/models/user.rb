class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email,:first_name,:last_name,:age,:skills,:passion,:description,:website,:mob_no,:country,:city,:state, presence: true
end
