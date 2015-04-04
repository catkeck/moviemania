class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	#has_and_belongs_to_many :viewing_parties
  has_many :user_viewing_parties
  has_many :viewing_parties, :through => :user_viewing_parties
end
