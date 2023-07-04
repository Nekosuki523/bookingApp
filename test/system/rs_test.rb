require "application_system_test_case"

class RsTest < ApplicationSystemTestCase
  setup do
    @r = rs(:one)
  end

  test "visiting the index" do
    visit rs_url
    assert_selector "h1", text: "Rs"
  end

  test "creating a R" do
    visit rs_url
    click_on "New R"

    fill_in "Avatar path", with: @r.avatar_path
    fill_in "Name", with: @r.name
    click_on "Create R"

    assert_text "R was successfully created"
    click_on "Back"
  end

  test "updating a R" do
    visit rs_url
    click_on "Edit", match: :first

    fill_in "Avatar path", with: @r.avatar_path
    fill_in "Name", with: @r.name
    click_on "Update R"

    assert_text "R was successfully updated"
    click_on "Back"
  end

  test "destroying a R" do
    visit rs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "R was successfully destroyed"
  end
end
