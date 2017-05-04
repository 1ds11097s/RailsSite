require 'test_helper'

class DataPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_page = data_pages(:one)
  end

  test "should get index" do
    get data_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_data_page_url
    assert_response :success
  end

  test "should create data_page" do
    assert_difference('DataPage.count') do
      post data_pages_url, params: { data_page: { data: @data_page.data } }
    end

    assert_redirected_to data_page_url(DataPage.last)
  end

  test "should show data_page" do
    get data_page_url(@data_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_page_url(@data_page)
    assert_response :success
  end

  test "should update data_page" do
    patch data_page_url(@data_page), params: { data_page: { data: @data_page.data } }
    assert_redirected_to data_page_url(@data_page)
  end

  test "should destroy data_page" do
    assert_difference('DataPage.count', -1) do
      delete data_page_url(@data_page)
    end

    assert_redirected_to data_pages_url
  end
end
