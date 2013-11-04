class Article < ActiveRecord::Base
  attr_accessible :body, :published_at, :title, :article_image, 
                  :article_image_cache, :remove_article_image
  mount_uploader :article_image, PImageUploader

  has_many :comments, :dependent => :destroy
end