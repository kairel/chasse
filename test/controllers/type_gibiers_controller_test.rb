require 'test_helper'

class TypeGibiersControllerTest < ActionController::TestCase
  setup do
    @type_gibier = type_gibiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_gibiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_gibier" do
    assert_difference('TypeGibier.count') do
      post :create, type_gibier: { name: @type_gibier.name }
    end

    assert_redirected_to type_gibier_path(assigns(:type_gibier))
  end

  test "should show type_gibier" do
    get :show, id: @type_gibier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_gibier
    assert_response :success
  end

  test "should update type_gibier" do
    patch :update, id: @type_gibier, type_gibier: { name: @type_gibier.name }
    assert_redirected_to type_gibier_path(assigns(:type_gibier))
  end

  test "should destroy type_gibier" do
    assert_difference('TypeGibier.count', -1) do
      delete :destroy, id: @type_gibier
    end

    assert_redirected_to type_gibiers_path
  end
end
