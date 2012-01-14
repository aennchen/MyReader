class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :teaser
      t.string :url
      t.integer :source_id

      t.timestamps
    end
  end
end
