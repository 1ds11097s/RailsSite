require 'test_helper'

class QuestionariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionary = questionaries(:one)
  end

  test "should get index" do
    get questionaries_url
    assert_response :success
  end

  test "should get new" do
    get new_questionary_url
    assert_response :success
  end

  test "should create questionary" do
    assert_difference('Questionary.count') do
      post questionaries_url, params: { questionary: { deadline: @questionary.deadline, description: @questionary.description, title: @questionary.title } }
    end

    assert_redirected_to questionary_url(Questionary.last)
  end

  test "should show questionary" do
    get questionary_url(@questionary)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionary_url(@questionary)
    assert_response :success
  end

  test "should update questionary" do
    patch questionary_url(@questionary), params: { questionary: { deadline: @questionary.deadline, description: @questionary.description, title: @questionary.title } }
    assert_redirected_to questionary_url(@questionary)
  end

  test "should destroy questionary" do
    assert_difference('Questionary.count', -1) do
      delete questionary_url(@questionary)
    end

    assert_redirected_to questionaries_url
  end
end
