class ArticleCategory < ApplicationRecord
  belongs_to :article_id
  belongs_to :category
end
