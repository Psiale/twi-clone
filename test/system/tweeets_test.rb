require "application_system_test_case"

class TweeetsTest < ApplicationSystemTestCase
  setup do
    @tweeet = tweeets(:one)
  end

  test "visiting the index" do
    visit tweeets_url
    assert_selector "h1", text: "Tweeets"
  end

  test "creating a Tweeet" do
    visit tweeets_url
    click_on "New Tweeet"

    fill_in "Tweet", with: @tweeet.tweet
    click_on "Create Tweeet"

    assert_text "Tweeet was successfully created"
    click_on "Back"
  end

  test "updating a Tweeet" do
    visit tweeets_url
    click_on "Edit", match: :first

    fill_in "Tweet", with: @tweeet.tweet
    click_on "Update Tweeet"

    assert_text "Tweeet was successfully updated"
    click_on "Back"
  end

  test "destroying a Tweeet" do
    visit tweeets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tweeet was successfully destroyed"
  end
end
