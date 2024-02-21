require "application_system_test_case"

class BurgersTest < ApplicationSystemTestCase
  setup do
    @burger = burgers(:one)
  end

  test "visiting the index" do
    visit burgers_url
    assert_selector "h1", text: "Burgers"
  end

  test "should create burger" do
    visit burgers_url
    click_on "New burger"

    fill_in "Description", with: @burger.description
    fill_in "Image", with: @burger.image
    fill_in "Name", with: @burger.name
    fill_in "Price", with: @burger.price
    check "Veggie" if @burger.veggie
    click_on "Create Burger"

    assert_text "Burger was successfully created"
    click_on "Back"
  end

  test "should update Burger" do
    visit burger_url(@burger)
    click_on "Edit this burger", match: :first

    fill_in "Description", with: @burger.description
    fill_in "Image", with: @burger.image
    fill_in "Name", with: @burger.name
    fill_in "Price", with: @burger.price
    check "Veggie" if @burger.veggie
    click_on "Update Burger"

    assert_text "Burger was successfully updated"
    click_on "Back"
  end

  test "should destroy Burger" do
    visit burger_url(@burger)
    click_on "Destroy this burger", match: :first

    assert_text "Burger was successfully destroyed"
  end
end
