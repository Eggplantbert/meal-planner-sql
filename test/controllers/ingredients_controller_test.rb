require 'test_helper'

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  test "should create ingredient" do
    assert_difference -> { Ingredient.count } do
      post recipes_path, params: { recipe: { title: "new recipe", author: "tester",
                                   ingredients_attributes: [name: "new ingredient", amount: 2, uom: "Test"] } }, as: :json
    end

    assert_redirected_to edit_recipe_path(Recipe.last)
    follow_redirect!
    assert_response :success
  end
end
