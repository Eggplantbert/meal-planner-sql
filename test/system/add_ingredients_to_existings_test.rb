require "application_system_test_case"

class AddIngredientsToExistingsTest < ApplicationSystemTestCase
  test "add ingredient to existing recipe" do
    visit recipes_url

    click_on "New Recipe"

    fill_in "Title", with: "Apple Pie"
    fill_in "Author", with: "test"
    
    click_on "Create Recipe"
    click_on "Edit"
    
    fill_in "Name", with: "Apple"
    fill_in "Amount", with: 3
    fill_in "Uom", with: "Apples"
    
    click_on "Update Recipe"

    take_screenshot

    assert_text "Apple Pie"
    assert_text "Apple"
  end
end
