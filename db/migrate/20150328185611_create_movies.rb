class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :review
      t.string :trailer

      t.timestamps null: false
    end
  end
end
