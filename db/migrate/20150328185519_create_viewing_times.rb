class CreateViewingTimes < ActiveRecord::Migration
  def change
    create_table :viewing_times do |t|
      t.string :time
      t.string :date
      t.string :movie_id

      t.timestamps null: false
    end
  end
end
