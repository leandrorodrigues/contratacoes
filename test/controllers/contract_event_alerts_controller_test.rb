require 'test_helper'

class ContractEventAlertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract_event_alert = contract_event_alerts(:one)
  end

  test "should get index" do
    get contract_event_alerts_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_event_alert_url
    assert_response :success
  end

  test "should create contract_event_alert" do
    assert_difference('ContractEventAlert.count') do
      post contract_event_alerts_url, params: { contract_event_alert: { contract_event_id: @contract_event_alert.contract_event_id, modified_at: @contract_event_alert.modified_at, titulo: @contract_event_alert.titulo } }
    end

    assert_redirected_to contract_event_alert_url(ContractEventAlert.last)
  end

  test "should show contract_event_alert" do
    get contract_event_alert_url(@contract_event_alert)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_event_alert_url(@contract_event_alert)
    assert_response :success
  end

  test "should update contract_event_alert" do
    patch contract_event_alert_url(@contract_event_alert), params: { contract_event_alert: { contract_event_id: @contract_event_alert.contract_event_id, modified_at: @contract_event_alert.modified_at, titulo: @contract_event_alert.titulo } }
    assert_redirected_to contract_event_alert_url(@contract_event_alert)
  end

  test "should destroy contract_event_alert" do
    assert_difference('ContractEventAlert.count', -1) do
      delete contract_event_alert_url(@contract_event_alert)
    end

    assert_redirected_to contract_event_alerts_url
  end
end
