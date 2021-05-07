require "application_system_test_case"

class NothingsTest < ApplicationSystemTestCase
  setup do
    @nothing = nothings(:one)
  end

  test "visiting the index" do
    visit nothings_url
    assert_selector "h1", text: "Nothings"
  end

  test "creating a Nothing" do
    visit nothings_url
    click_on "New Nothing"

    fill_in "Name", with: @nothing.name
    click_on "Create Nothing"

    assert_text "Nothing was successfully created"
    click_on "Back"
  end

  test "updating a Nothing" do
    visit nothings_url
    click_on "Edit", match: :first

    fill_in "Name", with: @nothing.name
    click_on "Update Nothing"

    assert_text "Nothing was successfully updated"
    click_on "Back"
  end

  test "destroying a Nothing" do
    visit nothings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nothing was successfully destroyed"
  end
end
