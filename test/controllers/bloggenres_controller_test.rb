require 'test_helper'

class BloggenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bloggenres_index_url
    assert_response :success
  end

  test "should get add" do
    get bloggenres_add_url
    assert_response :success
  end

  test "should get edit" do
    get bloggenres_edit_url
    assert_response :success
  end

end
