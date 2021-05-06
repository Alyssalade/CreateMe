require "test_helper"

class DearMesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dear_me = dear_mes(:one)
  end

  test "should get index" do
    get dear_mes_url
    assert_response :success
  end

  test "should get new" do
    get new_dear_me_url
    assert_response :success
  end

  test "should create dear_me" do
    assert_difference('DearMe.count') do
      post dear_mes_url, params: { dear_me: { name: @dear_me.name } }
    end

    assert_redirected_to dear_me_url(DearMe.last)
  end

  test "should show dear_me" do
    get dear_me_url(@dear_me)
    assert_response :success
  end

  test "should get edit" do
    get edit_dear_me_url(@dear_me)
    assert_response :success
  end

  test "should update dear_me" do
    patch dear_me_url(@dear_me), params: { dear_me: { name: @dear_me.name } }
    assert_redirected_to dear_me_url(@dear_me)
  end

  test "should destroy dear_me" do
    assert_difference('DearMe.count', -1) do
      delete dear_me_url(@dear_me)
    end

    assert_redirected_to dear_mes_url
  end
end
