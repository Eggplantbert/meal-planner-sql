require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  test "should not save without name and amount" do
    ingredient = Ingredient.new
    ingredient.name = "test"
    assert_not ingredient.save
  end
end
