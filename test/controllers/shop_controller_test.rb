require 'test_helper'

class ShopControllerTest < ActionDispatch::IntegrationTest
  test "should get skirts" do
    get shop_skirts_url
    assert_response :success
  end

  test "should get dress" do
    get shop_dress_url
    assert_response :success
  end

  test "should get tops" do
    get shop_tops_url
    assert_response :success
  end

  test "should get pants" do
    get shop_pants_url
    assert_response :success
  end

  test "should get sandal" do
    get shop_sandal_url
    assert_response :success
  end

  test "should get jewellery" do
    get shop_jewellery_url
    assert_response :success
  end

end
