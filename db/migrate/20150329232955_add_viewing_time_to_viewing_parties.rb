class AddViewingTimeToViewingParties < ActiveRecord::Migration
  def change
    add_column :viewing_parties, :viewing_time, :datetime
  end
end
