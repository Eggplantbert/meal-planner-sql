require "application_system_test_case"

class AddIngredientsTest < ApplicationSystemTestCase
  test "add ingredient to recipe" do
    visit recipes_url

    click_on "New Recipe"

    fill_in "Title", with: "System Test"
    fill_in "Author", with: "sys"

    fill_in "Name", with: "rb code"
    fill_in "Amount", with: 24
    fill_in "Uom", with: "Lines"

    click_on "Create Recipe"

    take_screenshot

    assert_text "Apple Pie"
    assert_text "Apple"
  end
end
