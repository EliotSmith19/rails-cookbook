class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :catagory

  validates :comment, length: {minimum: 6}
  validates :recipe_id, uniqueness: { scope: :category_id, message: "pairing with this category already exists" }
end
