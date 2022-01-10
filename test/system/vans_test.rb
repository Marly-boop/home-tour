require "application_system_test_case"

class VansTest < ApplicationSystemTestCase
  setup do
    @van = vans(:one)
  end

  test "visiting the index" do
    visit vans_url
    assert_selector "h1", text: "Vans"
  end

  test "creating a Van" do
    visit vans_url
    click_on "New Van"

    fill_in "Description", with: @van.description
    fill_in "Lien", with: @van.lien
    click_on "Create Van"

    assert_text "Van was successfully created"
    click_on "Back"
  end

  test "updating a Van" do
    visit vans_url
    click_on "Edit", match: :first

    fill_in "Description", with: @van.description
    fill_in "Lien", with: @van.lien
    click_on "Update Van"

    assert_text "Van was successfully updated"
    click_on "Back"
  end

  test "destroying a Van" do
    visit vans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Van was successfully destroyed"
  end
end
