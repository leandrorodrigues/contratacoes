require 'test_helper'

class ContractItemGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract_item_group = contract_item_groups(:one)
  end

  test "should get index" do
    get contract_item_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_item_group_url
    assert_response :success
  end

  test "should create contract_item_group" do
    assert_difference('ContractItemGroup.count') do
      post contract_item_groups_url, params: { contract_item_group: { contract_id: @contract_item_group.contract_id, contracts_id: @contract_item_group.contracts_id, number: @contract_item_group.number, title: @contract_item_group.title } }
    end

    assert_redirected_to contract_item_group_url(ContractItemGroup.last)
  end

  test "should show contract_item_group" do
    get contract_item_group_url(@contract_item_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_item_group_url(@contract_item_group)
    assert_response :success
  end

  test "should update contract_item_group" do
    patch contract_item_group_url(@contract_item_group), params: { contract_item_group: { contract_id: @contract_item_group.contract_id, contracts_id: @contract_item_group.contracts_id, number: @contract_item_group.number, title: @contract_item_group.title } }
    assert_redirected_to contract_item_group_url(@contract_item_group)
  end

  test "should destroy contract_item_group" do
    assert_difference('ContractItemGroup.count', -1) do
      delete contract_item_group_url(@contract_item_group)
    end

    assert_redirected_to contract_item_groups_url
  end
end
