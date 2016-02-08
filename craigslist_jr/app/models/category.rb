class Category < ActiveRecord::Base
  validates :name, { null: false }

  has_many :articles
end
