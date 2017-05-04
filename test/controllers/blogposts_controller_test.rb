require 'test_helper'

class BlogpostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogposts_index_url
    assert_response :success
  end

  test "should get add" do
    get blogposts_add_url
    assert_response :success
  end

  test "should get edit" do
    get blogposts_edit_url
    assert_response :success
  end

  test "should get delete" do
    get blogposts_delete_url
    assert_response :success
  end

end
