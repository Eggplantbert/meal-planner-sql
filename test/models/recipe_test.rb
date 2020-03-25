require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "don't save without values" do
    recipe = Recipe.new
    assert_not recipe.save
  end
end
