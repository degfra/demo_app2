require 'test_helper'

class MiceopostsControllerTest < ActionController::TestCase
  setup do
    @miceopost = miceoposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miceoposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create miceopost" do
    assert_difference('Miceopost.count') do
      post :create, miceopost: @miceopost.attributes
    end

    assert_redirected_to miceopost_path(assigns(:miceopost))
  end

  test "should show miceopost" do
    get :show, id: @miceopost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @miceopost
    assert_response :success
  end

  test "should update miceopost" do
    put :update, id: @miceopost, miceopost: @miceopost.attributes
    assert_redirected_to miceopost_path(assigns(:miceopost))
  end

  test "should destroy miceopost" do
    assert_difference('Miceopost.count', -1) do
      delete :destroy, id: @miceopost
    end

    assert_redirected_to miceoposts_path
  end
end
