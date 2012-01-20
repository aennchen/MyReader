class SetNameForRatingIndex < ActiveRecord::Migration
  def up
    remove_index :ratings, [:user_id, :article_id]
    add_index :ratings, [:user_id, :article_id], unique: true, name: :user_and_article
  end

  def down
    remove_index :ratings, name: :user_and_article
    add_index :ratings, [:user_id, :article_id], unique: true
  end
end
