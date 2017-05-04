require 'test_helper'

class BoardUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @board_user = board_users(:one)
  end

  test "should get index" do
    get board_users_url
    assert_response :success
  end

  test "should get new" do
    get new_board_user_url
    assert_response :success
  end

  test "should create board_user" do
    assert_difference('BoardUser.count') do
      post board_users_url, params: { board_user: { account_id: @board_user.account_id, memo: @board_user.memo, nickname: @board_user.nickname } }
    end

    assert_redirected_to board_user_url(BoardUser.last)
  end

  test "should show board_user" do
    get board_user_url(@board_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_board_user_url(@board_user)
    assert_response :success
  end

  test "should update board_user" do
    patch board_user_url(@board_user), params: { board_user: { account_id: @board_user.account_id, memo: @board_user.memo, nickname: @board_user.nickname } }
    assert_redirected_to board_user_url(@board_user)
  end

  test "should destroy board_user" do
    assert_difference('BoardUser.count', -1) do
      delete board_user_url(@board_user)
    end

    assert_redirected_to board_users_url
  end
end
