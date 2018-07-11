require "application_system_test_case"

class ContractParticipationsTest < ApplicationSystemTestCase
  setup do
    @contract_participation = contract_participations(:one)
  end

  test "visiting the index" do
    visit contract_participations_url
    assert_selector "h1", text: "Contract Participations"
  end

  test "creating a Contract participation" do
    visit contract_participations_url
    click_on "New Contract Participation"

    fill_in "Contract", with: @contract_participation.contract_id
    fill_in "User", with: @contract_participation.user_id
    click_on "Create Contract participation"

    assert_text "Contract participation was successfully created"
    click_on "Back"
  end

  test "updating a Contract participation" do
    visit contract_participations_url
    click_on "Edit", match: :first

    fill_in "Contract", with: @contract_participation.contract_id
    fill_in "User", with: @contract_participation.user_id
    click_on "Update Contract participation"

    assert_text "Contract participation was successfully updated"
    click_on "Back"
  end

  test "destroying a Contract participation" do
    visit contract_participations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contract participation was successfully destroyed"
  end
end
