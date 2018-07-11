require 'test_helper'

class ContractItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract_item = contract_items(:one)
  end

  test "should get index" do
    get contract_items_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_item_url
    assert_response :success
  end

  test "should create contract_item" do
    assert_difference('ContractItem.count') do
      post contract_items_url, params: { contract_item: { contract_item_group_id: @contract_item.contract_item_group_id, description: @contract_item.description, modified_at: @contract_item.modified_at, number: @contract_item.number, quantity: @contract_item.quantity, title: @contract_item.title, total_value: @contract_item.total_value, unity_value: @contract_item.unity_value } }
    end

    assert_redirected_to contract_item_url(ContractItem.last)
  end

  test "should show contract_item" do
    get contract_item_url(@contract_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_item_url(@contract_item)
    assert_response :success
  end

  test "should update contract_item" do
    patch contract_item_url(@contract_item), params: { contract_item: { contract_item_group_id: @contract_item.contract_item_group_id, description: @contract_item.description, modified_at: @contract_item.modified_at, number: @contract_item.number, quantity: @contract_item.quantity, title: @contract_item.title, total_value: @contract_item.total_value, unity_value: @contract_item.unity_value } }
    assert_redirected_to contract_item_url(@contract_item)
  end

  test "should destroy contract_item" do
    assert_difference('ContractItem.count', -1) do
      delete contract_item_url(@contract_item)
    end

    assert_redirected_to contract_items_url
  end
end
