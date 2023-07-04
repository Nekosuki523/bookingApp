require "test_helper"

class RoomimagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roomimage = roomimages(:one)
  end

  test "should get index" do
    get roomimages_url
    assert_response :success
  end

  test "should get new" do
    get new_roomimage_url
    assert_response :success
  end

  test "should create roomimage" do
    assert_difference('Roomimage.count') do
      post roomimages_url, params: { roomimage: { avatar_path: @roomimage.avatar_path, name: @roomimage.name } }
    end

    assert_redirected_to roomimage_url(Roomimage.last)
  end

  test "should show roomimage" do
    get roomimage_url(@roomimage)
    assert_response :success
  end

  test "should get edit" do
    get edit_roomimage_url(@roomimage)
    assert_response :success
  end

  test "should update roomimage" do
    patch roomimage_url(@roomimage), params: { roomimage: { avatar_path: @roomimage.avatar_path, name: @roomimage.name } }
    assert_redirected_to roomimage_url(@roomimage)
  end

  test "should destroy roomimage" do
    assert_difference('Roomimage.count', -1) do
      delete roomimage_url(@roomimage)
    end

    assert_redirected_to roomimages_url
  end
end
