class Article < ActiveRecord::Base
  validates :title, :body, :category, { presence: true }

  belongs_to :category
end
