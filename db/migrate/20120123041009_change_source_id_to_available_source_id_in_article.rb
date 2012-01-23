class ChangeSourceIdToAvailableSourceIdInArticle < ActiveRecord::Migration
  def up
    rename_column :articles, :source_id, :available_source_id
  end

  def down
    rename_column :articles, :available_source_id, :source_id
  end
end
