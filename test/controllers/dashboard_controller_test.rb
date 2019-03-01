require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_index_url
    assert_response :success
  end

  test "should get new" do
    get dashboard_new_url
    assert_response :success
  end

  test "should get edit" do
    get dashboard_edit_url
    assert_response :success
  end

  test "should get show" do
    get dashboard_show_url
    assert_response :success
  end

  test "should get delete" do
    get dashboard_delete_url
    assert_response :success
  end

end
