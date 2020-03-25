require "application_system_test_case"

class AddIngredientsTest < ApplicationSystemTestCase
  test "add ingredient to recipe" do
    visit recipes_url

    click_on "New Recipe"

    fill_in "Title", with: "Apple Pie"
    fill_in "Author", with: "test"

    fill_in "Name", with: "Apple"
    fill_in "Amount", with: 3
    fill_in "Uom", with: "Apples"

    click_on "Create Recipe"

    take_screenshot

    assert_text "Apple Pie"
    assert_text "Apple"
  end
end
