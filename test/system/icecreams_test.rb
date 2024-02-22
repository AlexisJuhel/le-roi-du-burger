require "application_system_test_case"

class IcecreamsTest < ApplicationSystemTestCase
  setup do
    @icecream = icecreams(:one)
  end

  test "visiting the index" do
    visit icecreams_url
    assert_selector "h1", text: "Icecreams"
  end

  test "should create icecream" do
    visit icecreams_url
    click_on "New icecream"

    fill_in "Description", with: @icecream.description
    fill_in "Image", with: @icecream.image
    fill_in "Name", with: @icecream.name
    fill_in "Price", with: @icecream.price
    click_on "Create Icecream"

    assert_text "Icecream was successfully created"
    click_on "Back"
  end

  test "should update Icecream" do
    visit icecream_url(@icecream)
    click_on "Edit this icecream", match: :first

    fill_in "Description", with: @icecream.description
    fill_in "Image", with: @icecream.image
    fill_in "Name", with: @icecream.name
    fill_in "Price", with: @icecream.price
    click_on "Update Icecream"

    assert_text "Icecream was successfully updated"
    click_on "Back"
  end

  test "should destroy Icecream" do
    visit icecream_url(@icecream)
    click_on "Destroy this icecream", match: :first

    assert_text "Icecream was successfully destroyed"
  end
end
