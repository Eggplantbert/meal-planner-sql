class Ingredient < ApplicationRecord
  # attr_accessor :recipe_id, :ingredient_id
  belongs_to :recipe, optional: true
  validates :name, presence: true, length: { minimum: 3 }
  validates :amount, presence: true
end
