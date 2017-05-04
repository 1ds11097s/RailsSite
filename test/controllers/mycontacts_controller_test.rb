require 'test_helper'

class MycontactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mycontact = mycontacts(:one)
  end

  test "should get index" do
    get mycontacts_url
    assert_response :success
  end

  test "should get new" do
    get new_mycontact_url
    assert_response :success
  end

  test "should create mycontact" do
    assert_difference('Mycontact.count') do
      post mycontacts_url, params: { mycontact: { age: @mycontact.age, mail: @mycontact.mail, name: @mycontact.name, nationality: @mycontact.nationality } }
    end

    assert_redirected_to mycontact_url(Mycontact.last)
  end

  test "should show mycontact" do
    get mycontact_url(@mycontact)
    assert_response :success
  end

  test "should get edit" do
    get edit_mycontact_url(@mycontact)
    assert_response :success
  end

  test "should update mycontact" do
    patch mycontact_url(@mycontact), params: { mycontact: { age: @mycontact.age, mail: @mycontact.mail, name: @mycontact.name, nationality: @mycontact.nationality } }
    assert_redirected_to mycontact_url(@mycontact)
  end

  test "should destroy mycontact" do
    assert_difference('Mycontact.count', -1) do
      delete mycontact_url(@mycontact)
    end

    assert_redirected_to mycontacts_url
  end
end
