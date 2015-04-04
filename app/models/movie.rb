class Movie < ActiveRecord::Base
	has_many :reviews	
  has_many :viewing_parties
end
