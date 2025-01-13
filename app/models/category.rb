class Category < ApplicationRecord
  has_many :bookmarks
  has_many :recipes, through: :bookmarks, dependent: :destroy

end
