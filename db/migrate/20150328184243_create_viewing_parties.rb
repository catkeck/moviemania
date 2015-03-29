class CreateViewingParties < ActiveRecord::Migration
  def change
    create_table :viewing_parties do |t|
      t.integer :movie_id
      t.integer :viewing_time_id

      t.timestamps null: false
    end
  end
end
