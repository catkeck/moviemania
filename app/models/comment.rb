class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :viewing_party
  belongs_to :comment
end
