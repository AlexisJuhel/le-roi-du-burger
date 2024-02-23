require "application_system_test_case"

class FriesTest < ApplicationSystemTestCase
  setup do
    @fry = fries(:one)
  end

  test "visiting the index" do
    visit fries_url
    assert_selector "h1", text: "Fries"
  end

  test "should create fry" do
    visit fries_url
    click_on "New fry"

    fill_in "Description", with: @fry.description
    fill_in "Image", with: @fry.image
    fill_in "Name", with: @fry.name
    fill_in "Price", with: @fry.price
    click_on "Create Fry"

    assert_text "Fry was successfully created"
    click_on "Back"
  end

  test "should update Fry" do
    visit fry_url(@fry)
    click_on "Edit this fry", match: :first

    fill_in "Description", with: @fry.description
    fill_in "Image", with: @fry.image
    fill_in "Name", with: @fry.name
    fill_in "Price", with: @fry.price
    click_on "Update Fry"

    assert_text "Fry was successfully updated"
    click_on "Back"
  end

  test "should destroy Fry" do
    visit fry_url(@fry)
    click_on "Destroy this fry", match: :first

    assert_text "Fry was successfully destroyed"
  end
end
