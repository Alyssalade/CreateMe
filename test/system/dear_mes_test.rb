require "application_system_test_case"

class DearMesTest < ApplicationSystemTestCase
  setup do
    @dear_me = dear_mes(:one)
  end

  test "visiting the index" do
    visit dear_mes_url
    assert_selector "h1", text: "Dear Mes"
  end

  test "creating a Dear me" do
    visit dear_mes_url
    click_on "New Dear Me"

    fill_in "Name", with: @dear_me.name
    click_on "Create Dear me"

    assert_text "Dear me was successfully created"
    click_on "Back"
  end

  test "updating a Dear me" do
    visit dear_mes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @dear_me.name
    click_on "Update Dear me"

    assert_text "Dear me was successfully updated"
    click_on "Back"
  end

  test "destroying a Dear me" do
    visit dear_mes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dear me was successfully destroyed"
  end
end
