class CreateUserViewingParties < ActiveRecord::Migration
  def change
    create_table :user_viewing_parties do |t|
      t.integer :user_id
      t.integer :viewing_party_id

      t.timestamps null: false
    end

    add_index :user_viewing_parties, [:user_id, :viewing_party_id] 
  end
end
