require "application_system_test_case"

class ContractItemsTest < ApplicationSystemTestCase
  setup do
    @contract_item = contract_items(:one)
  end

  test "visiting the index" do
    visit contract_items_url
    assert_selector "h1", text: "Contract Items"
  end

  test "creating a Contract item" do
    visit contract_items_url
    click_on "New Contract Item"

    fill_in "Contract Item Group", with: @contract_item.contract_item_group_id
    fill_in "Description", with: @contract_item.description
    fill_in "Modified At", with: @contract_item.modified_at
    fill_in "Number", with: @contract_item.number
    fill_in "Quantity", with: @contract_item.quantity
    fill_in "Title", with: @contract_item.title
    fill_in "Total Value", with: @contract_item.total_value
    fill_in "Unity Value", with: @contract_item.unity_value
    click_on "Create Contract item"

    assert_text "Contract item was successfully created"
    click_on "Back"
  end

  test "updating a Contract item" do
    visit contract_items_url
    click_on "Edit", match: :first

    fill_in "Contract Item Group", with: @contract_item.contract_item_group_id
    fill_in "Description", with: @contract_item.description
    fill_in "Modified At", with: @contract_item.modified_at
    fill_in "Number", with: @contract_item.number
    fill_in "Quantity", with: @contract_item.quantity
    fill_in "Title", with: @contract_item.title
    fill_in "Total Value", with: @contract_item.total_value
    fill_in "Unity Value", with: @contract_item.unity_value
    click_on "Update Contract item"

    assert_text "Contract item was successfully updated"
    click_on "Back"
  end

  test "destroying a Contract item" do
    visit contract_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contract item was successfully destroyed"
  end
end
