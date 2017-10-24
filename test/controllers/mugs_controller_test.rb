require 'test_helper'

class MugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mug = mugs(:one)
  end

  test "should get index" do
    get mugs_url
    assert_response :success
  end

  test "should get new" do
    get new_mug_url
    assert_response :success
  end

  test "should create mug" do
    assert_difference('Mug.count') do
      post mugs_url, params: { mug: { description: @mug.description, name: @mug.name, price: @mug.price } }
    end

    assert_redirected_to mug_url(Mug.last)
  end

  test "should show mug" do
    get mug_url(@mug)
    assert_response :success
  end

  test "should get edit" do
    get edit_mug_url(@mug)
    assert_response :success
  end

  test "should update mug" do
    patch mug_url(@mug), params: { mug: { description: @mug.description, name: @mug.name, price: @mug.price } }
    assert_redirected_to mug_url(@mug)
  end

  test "should destroy mug" do
    assert_difference('Mug.count', -1) do
      delete mug_url(@mug)
    end

    assert_redirected_to mugs_url
  end
end
