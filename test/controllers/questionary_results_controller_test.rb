require 'test_helper'

class QuestionaryResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionary_result = questionary_results(:one)
  end

  test "should get index" do
    get questionary_results_url
    assert_response :success
  end

  test "should get new" do
    get new_questionary_result_url
    assert_response :success
  end

  test "should create questionary_result" do
    assert_difference('QuestionaryResult.count') do
      post questionary_results_url, params: { questionary_result: { questionary_id: @questionary_result.questionary_id, result: @questionary_result.result } }
    end

    assert_redirected_to questionary_result_url(QuestionaryResult.last)
  end

  test "should show questionary_result" do
    get questionary_result_url(@questionary_result)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionary_result_url(@questionary_result)
    assert_response :success
  end

  test "should update questionary_result" do
    patch questionary_result_url(@questionary_result), params: { questionary_result: { questionary_id: @questionary_result.questionary_id, result: @questionary_result.result } }
    assert_redirected_to questionary_result_url(@questionary_result)
  end

  test "should destroy questionary_result" do
    assert_difference('QuestionaryResult.count', -1) do
      delete questionary_result_url(@questionary_result)
    end

    assert_redirected_to questionary_results_url
  end
end
