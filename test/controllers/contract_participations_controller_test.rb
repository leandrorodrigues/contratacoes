require 'test_helper'

class ContractParticipationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract_participation = contract_participations(:one)
  end

  test "should get index" do
    get contract_participations_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_participation_url
    assert_response :success
  end

  test "should create contract_participation" do
    assert_difference('ContractParticipation.count') do
      post contract_participations_url, params: { contract_participation: { contract_id: @contract_participation.contract_id, user_id: @contract_participation.user_id } }
    end

    assert_redirected_to contract_participation_url(ContractParticipation.last)
  end

  test "should show contract_participation" do
    get contract_participation_url(@contract_participation)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_participation_url(@contract_participation)
    assert_response :success
  end

  test "should update contract_participation" do
    patch contract_participation_url(@contract_participation), params: { contract_participation: { contract_id: @contract_participation.contract_id, user_id: @contract_participation.user_id } }
    assert_redirected_to contract_participation_url(@contract_participation)
  end

  test "should destroy contract_participation" do
    assert_difference('ContractParticipation.count', -1) do
      delete contract_participation_url(@contract_participation)
    end

    assert_redirected_to contract_participations_url
  end
end
