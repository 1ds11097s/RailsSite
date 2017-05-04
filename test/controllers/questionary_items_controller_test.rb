require 'test_helper'

class QuestionaryItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionary_item = questionary_items(:one)
  end

  test "should get index" do
    get questionary_items_url
    assert_response :success
  end

  test "should get new" do
    get new_questionary_item_url
    assert_response :success
  end

  test "should create questionary_item" do
    assert_difference('QuestionaryItem.count') do
      post questionary_items_url, params: { questionary_item: { content: @questionary_item.content, questionary_id: @questionary_item.questionary_id } }
    end

    assert_redirected_to questionary_item_url(QuestionaryItem.last)
  end

  test "should show questionary_item" do
    get questionary_item_url(@questionary_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionary_item_url(@questionary_item)
    assert_response :success
  end

  test "should update questionary_item" do
    patch questionary_item_url(@questionary_item), params: { questionary_item: { content: @questionary_item.content, questionary_id: @questionary_item.questionary_id } }
    assert_redirected_to questionary_item_url(@questionary_item)
  end

  test "should destroy questionary_item" do
    assert_difference('QuestionaryItem.count', -1) do
      delete questionary_item_url(@questionary_item)
    end

    assert_redirected_to questionary_items_url
  end
end
