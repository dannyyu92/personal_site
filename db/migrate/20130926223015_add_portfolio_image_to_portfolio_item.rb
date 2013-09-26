class AddPortfolioImageToPortfolioItem < ActiveRecord::Migration
  def change
    add_column :portfolio_items, :portfolio_image, :string
  end
end
