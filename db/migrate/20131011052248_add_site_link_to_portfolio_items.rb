class AddSiteLinkToPortfolioItems < ActiveRecord::Migration
  def change
    add_column :portfolio_items, :site_link, :string
  end
end
