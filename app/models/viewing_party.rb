class ViewingParty < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_one :viewing_time
	
end
