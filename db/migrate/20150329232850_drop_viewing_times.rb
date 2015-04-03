class DropViewingTimes < ActiveRecord::Migration
  def change
    drop_table :viewing_times
  end
end
