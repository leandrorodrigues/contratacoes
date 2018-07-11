require 'test_helper'

class ContractEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract_event = contract_events(:one)
  end

  test "should get index" do
    get contract_events_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_event_url
    assert_response :success
  end

  test "should create contract_event" do
    assert_difference('ContractEvent.count') do
      post contract_events_url, params: { contract_event: { contract_id: @contract_event.contract_id, modified_at: @contract_event.modified_at, title: @contract_event.title } }
    end

    assert_redirected_to contract_event_url(ContractEvent.last)
  end

  test "should show contract_event" do
    get contract_event_url(@contract_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_event_url(@contract_event)
    assert_response :success
  end

  test "should update contract_event" do
    patch contract_event_url(@contract_event), params: { contract_event: { contract_id: @contract_event.contract_id, modified_at: @contract_event.modified_at, title: @contract_event.title } }
    assert_redirected_to contract_event_url(@contract_event)
  end

  test "should destroy contract_event" do
    assert_difference('ContractEvent.count', -1) do
      delete contract_event_url(@contract_event)
    end

    assert_redirected_to contract_events_url
  end
end
