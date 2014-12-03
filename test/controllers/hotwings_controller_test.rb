require 'test_helper'

class HotwingsControllerTest < ActionController::TestCase
  setup do
    @hotwing = hotwings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hotwings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hotwing" do
    assert_difference('Hotwing.count') do
      post :create, hotwing: { heat_index: @hotwing.heat_index, sauce: @hotwing.sauce }
    end

    assert_redirected_to hotwing_path(assigns(:hotwing))
  end

  test "should show hotwing" do
    get :show, id: @hotwing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hotwing
    assert_response :success
  end

  test "should update hotwing" do
    patch :update, id: @hotwing, hotwing: { heat_index: @hotwing.heat_index, sauce: @hotwing.sauce }
    assert_redirected_to hotwing_path(assigns(:hotwing))
  end

  test "should destroy hotwing" do
    assert_difference('Hotwing.count', -1) do
      delete :destroy, id: @hotwing
    end

    assert_redirected_to hotwings_path
  end
end
