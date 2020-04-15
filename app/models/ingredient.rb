class Ingredient < ApplicationRecord
  # attr_accessor :recipe_id, :ingredient_id
  belongs_to :recipe
end
