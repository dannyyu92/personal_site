class Comment < ActiveRecord::Base
  attr_accessible :article_id, :body, :name, :published_at

  validates :name, presence: true
  validates :body, presence: true

  belongs_to :article
end
