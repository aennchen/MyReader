class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id,     null: false
      t.integer :article_id,  null: false
      t.integer :rating,      null: false, default: 1

      t.timestamps
    end

    add_index :ratings, [:user_id, :article_id], unique: true
  end
end
