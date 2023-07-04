require "application_system_test_case"

class RoomimagesTest < ApplicationSystemTestCase
  setup do
    @roomimage = roomimages(:one)
  end

  test "visiting the index" do
    visit roomimages_url
    assert_selector "h1", text: "Roomimages"
  end

  test "creating a Roomimage" do
    visit roomimages_url
    click_on "New Roomimage"

    fill_in "Avatar path", with: @roomimage.avatar_path
    fill_in "Name", with: @roomimage.name
    click_on "Create Roomimage"

    assert_text "Roomimage was successfully created"
    click_on "Back"
  end

  test "updating a Roomimage" do
    visit roomimages_url
    click_on "Edit", match: :first

    fill_in "Avatar path", with: @roomimage.avatar_path
    fill_in "Name", with: @roomimage.name
    click_on "Update Roomimage"

    assert_text "Roomimage was successfully updated"
    click_on "Back"
  end

  test "destroying a Roomimage" do
    visit roomimages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roomimage was successfully destroyed"
  end
end
