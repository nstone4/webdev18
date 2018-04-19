require 'test_helper'

class PhotoTestsControllerTest < ActionController::TestCase
  setup do
    @photo_test = photo_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_test" do
    assert_difference('PhotoTest.count') do
      post :create, photo_test: { caption: @photo_test.caption, filename: @photo_test.filename, photo_id: @photo_test.photo_id, time: @photo_test.time, user_id: @photo_test.user_id }
    end

    assert_redirected_to photo_test_path(assigns(:photo_test))
  end

  test "should show photo_test" do
    get :show, id: @photo_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo_test
    assert_response :success
  end

  test "should update photo_test" do
    patch :update, id: @photo_test, photo_test: { caption: @photo_test.caption, filename: @photo_test.filename, photo_id: @photo_test.photo_id, time: @photo_test.time, user_id: @photo_test.user_id }
    assert_redirected_to photo_test_path(assigns(:photo_test))
  end

  test "should destroy photo_test" do
    assert_difference('PhotoTest.count', -1) do
      delete :destroy, id: @photo_test
    end

    assert_redirected_to photo_tests_path
  end
end
