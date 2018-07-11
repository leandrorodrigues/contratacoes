require "application_system_test_case"

class ContractEventAlertsTest < ApplicationSystemTestCase
  setup do
    @contract_event_alert = contract_event_alerts(:one)
  end

  test "visiting the index" do
    visit contract_event_alerts_url
    assert_selector "h1", text: "Contract Event Alerts"
  end

  test "creating a Contract event alert" do
    visit contract_event_alerts_url
    click_on "New Contract Event Alert"

    fill_in "Contract Event", with: @contract_event_alert.contract_event_id
    fill_in "Modified At", with: @contract_event_alert.modified_at
    fill_in "Titulo", with: @contract_event_alert.titulo
    click_on "Create Contract event alert"

    assert_text "Contract event alert was successfully created"
    click_on "Back"
  end

  test "updating a Contract event alert" do
    visit contract_event_alerts_url
    click_on "Edit", match: :first

    fill_in "Contract Event", with: @contract_event_alert.contract_event_id
    fill_in "Modified At", with: @contract_event_alert.modified_at
    fill_in "Titulo", with: @contract_event_alert.titulo
    click_on "Update Contract event alert"

    assert_text "Contract event alert was successfully updated"
    click_on "Back"
  end

  test "destroying a Contract event alert" do
    visit contract_event_alerts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contract event alert was successfully destroyed"
  end
end
