class Movie < ActiveRecord::Base
	has_many :reviews	
  has_many :viewing_parties

  validates :name, presence:true
  validates :trailer, presence:true
  validates :movie_poster, presence:true
end
