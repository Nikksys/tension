require "application_system_test_case"

class PrisesTest < ApplicationSystemTestCase
  setup do
    @prise = prises(:one)
  end

  test "visiting the index" do
    visit prises_url
    assert_selector "h1", text: "Prises"
  end

  test "creating a Prise" do
    visit prises_url
    click_on "New Prise"

    fill_in "Dia", with: @prise.dia
    fill_in "Moment", with: @prise.moment
    fill_in "Note", with: @prise.note
    fill_in "Pulse", with: @prise.pulse
    fill_in "Sys", with: @prise.sys
    click_on "Create Prise"

    assert_text "Prise was successfully created"
    click_on "Back"
  end

  test "updating a Prise" do
    visit prises_url
    click_on "Edit", match: :first

    fill_in "Dia", with: @prise.dia
    fill_in "Moment", with: @prise.moment
    fill_in "Note", with: @prise.note
    fill_in "Pulse", with: @prise.pulse
    fill_in "Sys", with: @prise.sys
    click_on "Update Prise"

    assert_text "Prise was successfully updated"
    click_on "Back"
  end

  test "destroying a Prise" do
    visit prises_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prise was successfully destroyed"
  end
end
