class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
