class Recipe < ApplicationRecord
  has_many :bookmarks, :categories

  validates :description, presence: true
  validates :name, presence: true, uniqueness: true
  validates :rating, inclusion: { in: 0..10 }
end
