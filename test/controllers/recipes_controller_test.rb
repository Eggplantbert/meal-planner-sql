require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recipes_url
    assert_response :success
  end

  test "should create recipe" do
    assert_difference -> { Recipe.count } do
      post recipes_path, params: { recipe: { title: "new recipe", author: "tester" } }, as: :json
    end

    assert_redirected_to edit_recipe_path(Recipe.last)
    follow_redirect!
    assert_response :success
  end

  test "should destroy recipe" do
    recipe = recipes(:apple_pie)
    assert_difference('Recipe.count', -1) do
      delete recipe_url(recipe)
    end

    assert_redirected_to recipes_path
  end

  test "should update recipe" do
    recipe = recipes(:apple_pie)

    patch recipe_url(recipe), params: { recipe: { author: "updated" } }

    assert_redirected_to edit_recipe_path(recipe)
    recipe.reload
    assert_equal "updated", recipe.author
  end
end
