class PortfolioItem < ActiveRecord::Base
  attr_accessible :description, :title, :github, :site_link, :portfolio_image, 
                  :portfolio_image_cache, :remove_portfolio_image
  mount_uploader :portfolio_image, PImageUploader
end
