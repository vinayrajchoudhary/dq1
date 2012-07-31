require 'test_helper'

class LifespansControllerTest < ActionController::TestCase
  setup do
    @lifespan = lifespans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lifespans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lifespan" do
    assert_difference('Lifespan.count') do
      post :create, lifespan: {  }
    end

    assert_redirected_to lifespan_path(assigns(:lifespan))
  end

  test "should show lifespan" do
    get :show, id: @lifespan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lifespan
    assert_response :success
  end

  test "should update lifespan" do
    put :update, id: @lifespan, lifespan: {  }
    assert_redirected_to lifespan_path(assigns(:lifespan))
  end

  test "should destroy lifespan" do
    assert_difference('Lifespan.count', -1) do
      delete :destroy, id: @lifespan
    end

    assert_redirected_to lifespans_path
  end
end
