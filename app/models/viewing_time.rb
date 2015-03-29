class ViewingTime < ActiveRecord::Base
	belongs_to :movie
	belongs_to :viewing_party
end
