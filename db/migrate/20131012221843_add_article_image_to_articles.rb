class AddArticleImageToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :article_image, :string
  end
end
