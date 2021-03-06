require 'test_helper'

class SkateboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skateboard = skateboards(:one)
  end

  test "should get index" do
    get skateboards_url
    assert_response :success
  end

  test "should get new" do
    get new_skateboard_url
    assert_response :success
  end

  test "should create skateboard" do
    assert_difference('Skateboard.count') do
      post skateboards_url, params: { skateboard: { brand: @skateboard.brand, model: @skateboard.model, model_year: @skateboard.model_year, user_id: @skateboard.user_id } }
    end

    assert_redirected_to skateboard_url(Skateboard.last)
  end

  test "should show skateboard" do
    get skateboard_url(@skateboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_skateboard_url(@skateboard)
    assert_response :success
  end

  test "should update skateboard" do
    patch skateboard_url(@skateboard), params: { skateboard: { brand: @skateboard.brand, model: @skateboard.model, model_year: @skateboard.model_year, user_id: @skateboard.user_id } }
    assert_redirected_to skateboard_url(@skateboard)
  end

  test "should destroy skateboard" do
    assert_difference('Skateboard.count', -1) do
      delete skateboard_url(@skateboard)
    end

    assert_redirected_to skateboards_url
  end
end
