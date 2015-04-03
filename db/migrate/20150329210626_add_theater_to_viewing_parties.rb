class AddTheaterToViewingParties < ActiveRecord::Migration
  def change
    add_column :viewing_parties, :theater, :string
  end
end
