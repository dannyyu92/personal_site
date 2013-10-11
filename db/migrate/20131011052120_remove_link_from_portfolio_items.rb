class RemoveLinkFromPortfolioItems < ActiveRecord::Migration
  def up
    remove_column :portfolio_items, :link
  end

  def down
    add_column :portfolio_items, :link, :string
  end
end
