require "application_system_test_case"

class RecipesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit recipes_url
  
    assert_selector "h1", text: "Listing Recipes"
  end

  test "creating a recipe" do
    visit recipes_url

    click_on "New Recipe"

    fill_in "Title", with: "Creating a Recipe"
    fill_in "Author", with: "Author Name"

    take_screenshot

    click_on "Create Recipe"

    take_screenshot

    assert_text "Creating a Recipe"
  end
end
