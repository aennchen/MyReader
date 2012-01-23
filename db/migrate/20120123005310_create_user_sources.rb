class CreateUserSources < ActiveRecord::Migration
  def change
    create_table :user_sources do |t|
      t.integer :available_source_id
      t.string :alias_name
      t.integer :category_id

      t.timestamps
    end
  end
end
