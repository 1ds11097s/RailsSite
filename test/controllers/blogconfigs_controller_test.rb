require 'test_helper'

class BlogconfigsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogconfigs_index_url
    assert_response :success
  end

  test "should get edit" do
    get blogconfigs_edit_url
    assert_response :success
  end

end
