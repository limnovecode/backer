require "test_helper"

class Adminboard::LegalsControllerTest < ActionController::TestCase
  setup do
    @legal = legals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legal" do
    assert_difference('Legal.count') do
      post :create, legal: { active: @legal.active, title: @legal.title }
    end

    assert_redirected_to adminboard_legal_path(assigns(:legal))
  end

  test "should show legal" do
    get :show, id: @legal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @legal
    assert_response :success
  end

  test "should update legal" do
    patch :update, id: @legal, legal: { active: @legal.active, title: @legal.title }
    assert_redirected_to adminboard_legal_path(assigns(:legal))
  end

  test "should destroy legal" do
    assert_difference('Legal.count', -1) do
      delete :destroy, id: @legal
    end

    assert_redirected_to adminboard_legals_path
  end
end
