class AddPubDateToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :pub_date, :datetime
  end
end
