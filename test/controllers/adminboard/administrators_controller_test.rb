require "test_helper"

class Adminboard::AdministratorsControllerTest < ActionController::TestCase
  setup do
    @administrator = administrators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administrators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administrator" do
    assert_difference('Administrator.count') do
      post :create, administrator: { authentication_token: @administrator.authentication_token, email: @administrator.email, password_digest: @administrator.password_digest, reset_password_sent_at: @administrator.reset_password_sent_at, reset_password_token: @administrator.reset_password_token, slug: @administrator.slug, sudo: @administrator.sudo }
    end

    assert_redirected_to adminboard_administrator_path(assigns(:administrator))
  end

  test "should show administrator" do
    get :show, id: @administrator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @administrator
    assert_response :success
  end

  test "should update administrator" do
    patch :update, id: @administrator, administrator: { authentication_token: @administrator.authentication_token, email: @administrator.email, password_digest: @administrator.password_digest, reset_password_sent_at: @administrator.reset_password_sent_at, reset_password_token: @administrator.reset_password_token, slug: @administrator.slug, sudo: @administrator.sudo }
    assert_redirected_to adminboard_administrator_path(assigns(:administrator))
  end

  test "should destroy administrator" do
    assert_difference('Administrator.count', -1) do
      delete :destroy, id: @administrator
    end

    assert_redirected_to adminboard_administrators_path
  end
end
