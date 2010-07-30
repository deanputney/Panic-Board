require 'test_helper'

class CountdownsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:countdowns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create countdown" do
    assert_difference('Countdown.count') do
      post :create, :countdown => { }
    end

    assert_redirected_to countdown_path(assigns(:countdown))
  end

  test "should show countdown" do
    get :show, :id => countdowns(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => countdowns(:one).to_param
    assert_response :success
  end

  test "should update countdown" do
    put :update, :id => countdowns(:one).to_param, :countdown => { }
    assert_redirected_to countdown_path(assigns(:countdown))
  end

  test "should destroy countdown" do
    assert_difference('Countdown.count', -1) do
      delete :destroy, :id => countdowns(:one).to_param
    end

    assert_redirected_to countdowns_path
  end
end
