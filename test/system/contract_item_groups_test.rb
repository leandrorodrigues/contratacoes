require "application_system_test_case"

class ContractItemGroupsTest < ApplicationSystemTestCase
  setup do
    @contract_item_group = contract_item_groups(:one)
  end

  test "visiting the index" do
    visit contract_item_groups_url
    assert_selector "h1", text: "Contract Item Groups"
  end

  test "creating a Contract item group" do
    visit contract_item_groups_url
    click_on "New Contract Item Group"

    fill_in "Contract", with: @contract_item_group.contract_id
    fill_in "Contracts", with: @contract_item_group.contracts_id
    fill_in "Number", with: @contract_item_group.number
    fill_in "Title", with: @contract_item_group.title
    click_on "Create Contract item group"

    assert_text "Contract item group was successfully created"
    click_on "Back"
  end

  test "updating a Contract item group" do
    visit contract_item_groups_url
    click_on "Edit", match: :first

    fill_in "Contract", with: @contract_item_group.contract_id
    fill_in "Contracts", with: @contract_item_group.contracts_id
    fill_in "Number", with: @contract_item_group.number
    fill_in "Title", with: @contract_item_group.title
    click_on "Update Contract item group"

    assert_text "Contract item group was successfully updated"
    click_on "Back"
  end

  test "destroying a Contract item group" do
    visit contract_item_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contract item group was successfully destroyed"
  end
end
