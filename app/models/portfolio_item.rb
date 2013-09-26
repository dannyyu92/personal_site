class PortfolioItem < ActiveRecord::Base
  attr_accessible :description, :title, :portfolio_image
  mount_uploader :portfolio_image, PImageUploader
end
