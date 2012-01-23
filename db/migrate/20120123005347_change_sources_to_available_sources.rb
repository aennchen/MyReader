class ChangeSourcesToAvailableSources < ActiveRecord::Migration
  def up
    remove_column :sources, :category_id
    rename_table :sources, :available_sources
  end

  def down
    rename_table :available_sources, :sources
    add_column :sources, :category_id, :integer
  end
end
