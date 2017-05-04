require 'test_helper'

class QuestionaryChoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionary_choice = questionary_choices(:one)
  end

  test "should get index" do
    get questionary_choices_url
    assert_response :success
  end

  test "should get new" do
    get new_questionary_choice_url
    assert_response :success
  end

  test "should create questionary_choice" do
    assert_difference('QuestionaryChoice.count') do
      post questionary_choices_url, params: { questionary_choice: { content: @questionary_choice.content, questionary_item_id: @questionary_choice.questionary_item_id, value: @questionary_choice.value } }
    end

    assert_redirected_to questionary_choice_url(QuestionaryChoice.last)
  end

  test "should show questionary_choice" do
    get questionary_choice_url(@questionary_choice)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionary_choice_url(@questionary_choice)
    assert_response :success
  end

  test "should update questionary_choice" do
    patch questionary_choice_url(@questionary_choice), params: { questionary_choice: { content: @questionary_choice.content, questionary_item_id: @questionary_choice.questionary_item_id, value: @questionary_choice.value } }
    assert_redirected_to questionary_choice_url(@questionary_choice)
  end

  test "should destroy questionary_choice" do
    assert_difference('QuestionaryChoice.count', -1) do
      delete questionary_choice_url(@questionary_choice)
    end

    assert_redirected_to questionary_choices_url
  end
end
