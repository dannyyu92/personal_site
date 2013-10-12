class AddTitleAndBodyAndPublishedAtToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :title, :string
    add_column :articles, :body, :text
    add_column :articles, :published_at, :datetime
  end
end
