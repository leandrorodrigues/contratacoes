require "application_system_test_case"

class ContractEventsTest < ApplicationSystemTestCase
  setup do
    @contract_event = contract_events(:one)
  end

  test "visiting the index" do
    visit contract_events_url
    assert_selector "h1", text: "Contract Events"
  end

  test "creating a Contract event" do
    visit contract_events_url
    click_on "New Contract Event"

    fill_in "Contract", with: @contract_event.contract_id
    fill_in "Modified At", with: @contract_event.modified_at
    fill_in "Title", with: @contract_event.title
    click_on "Create Contract event"

    assert_text "Contract event was successfully created"
    click_on "Back"
  end

  test "updating a Contract event" do
    visit contract_events_url
    click_on "Edit", match: :first

    fill_in "Contract", with: @contract_event.contract_id
    fill_in "Modified At", with: @contract_event.modified_at
    fill_in "Title", with: @contract_event.title
    click_on "Update Contract event"

    assert_text "Contract event was successfully updated"
    click_on "Back"
  end

  test "destroying a Contract event" do
    visit contract_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contract event was successfully destroyed"
  end
end
