class AddSiteLinkToPortfolioItems < ActiveRecord::Migration
  def change
    add_column :portfolio_items, :site_link, :string
    add_column :portoflio_items, :github, :string
  end
end
