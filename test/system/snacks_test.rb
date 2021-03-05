require "application_system_test_case"

class SnacksTest < ApplicationSystemTestCase
  setup do
    @snack = snacks(:one)
  end

  test "visiting the index" do
    visit snacks_url
    assert_selector "h1", text: "Snacks"
  end

  test "creating a Snack" do
    visit snacks_url
    click_on "New Snack"

    fill_in "Description", with: @snack.description
    fill_in "Diet", with: @snack.diet_id
    fill_in "Snack", with: @snack.snack
    fill_in "Time", with: @snack.time
    click_on "Create Snack"

    assert_text "Snack was successfully created"
    click_on "Back"
  end

  test "updating a Snack" do
    visit snacks_url
    click_on "Edit", match: :first

    fill_in "Description", with: @snack.description
    fill_in "Diet", with: @snack.diet_id
    fill_in "Snack", with: @snack.snack
    fill_in "Time", with: @snack.time
    click_on "Update Snack"

    assert_text "Snack was successfully updated"
    click_on "Back"
  end

  test "destroying a Snack" do
    visit snacks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Snack was successfully destroyed"
  end
end
