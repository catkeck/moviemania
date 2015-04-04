class UserViewingParty < ActiveRecord::Base
  belongs_to :user
  belongs_to :viewing_party
end
