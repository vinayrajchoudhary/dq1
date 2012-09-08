require 'test_helper'

class QmailsControllerTest < ActionController::TestCase
  setup do
    @qmail = qmails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qmails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qmail" do
    assert_difference('Qmail.count') do
      post :create, qmail: { content: @qmail.content }
    end

    assert_redirected_to qmail_path(assigns(:qmail))
  end

  test "should show qmail" do
    get :show, id: @qmail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qmail
    assert_response :success
  end

  test "should update qmail" do
    put :update, id: @qmail, qmail: { content: @qmail.content }
    assert_redirected_to qmail_path(assigns(:qmail))
  end

  test "should destroy qmail" do
    assert_difference('Qmail.count', -1) do
      delete :destroy, id: @qmail
    end

    assert_redirected_to qmails_path
  end
end
