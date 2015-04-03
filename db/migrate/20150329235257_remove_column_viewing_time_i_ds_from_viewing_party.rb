class RemoveColumnViewingTimeIDsFromViewingParty < ActiveRecord::Migration
  def change
    remove_column :viewing_parties, :viewing_time_id
  end
end
