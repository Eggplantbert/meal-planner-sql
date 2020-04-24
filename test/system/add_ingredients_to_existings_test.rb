require "application_system_test_case"

class AddIngredientsToExistingTest < ApplicationSystemTestCase
  test "add ingredient to existing recipe" do
    visit recipes_url

    click_on "Edit"
    
    fill_in "Name", with: "Honeycrisp"
    fill_in "Amount", with: 5
    fill_in "Uom", with: "Apples"
    
    click_on "Update Recipe"

    take_screenshot

    assert_text "Apple Pie"
    assert_text "Honeycrisp"
  end
end
