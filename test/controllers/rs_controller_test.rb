require "test_helper"

class RsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @r = rs(:one)
  end

  test "should get index" do
    get rs_url
    assert_response :success
  end

  test "should get new" do
    get new_r_url
    assert_response :success
  end

  test "should create r" do
    assert_difference('R.count') do
      post rs_url, params: { r: { avatar_path: @r.avatar_path, name: @r.name } }
    end

    assert_redirected_to r_url(R.last)
  end

  test "should show r" do
    get r_url(@r)
    assert_response :success
  end

  test "should get edit" do
    get edit_r_url(@r)
    assert_response :success
  end

  test "should update r" do
    patch r_url(@r), params: { r: { avatar_path: @r.avatar_path, name: @r.name } }
    assert_redirected_to r_url(@r)
  end

  test "should destroy r" do
    assert_difference('R.count', -1) do
      delete r_url(@r)
    end

    assert_redirected_to rs_url
  end
end
