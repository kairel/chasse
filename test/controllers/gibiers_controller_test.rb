require 'test_helper'

class GibiersControllerTest < ActionController::TestCase
  setup do
    @gibier = gibiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gibiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gibier" do
    assert_difference('Gibier.count') do
      post :create, gibier: { icon: @gibier.icon, name: @gibier.name, type_gibier: @gibier.type_gibier }
    end

    assert_redirected_to gibier_path(assigns(:gibier))
  end

  test "should show gibier" do
    get :show, id: @gibier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gibier
    assert_response :success
  end

  test "should update gibier" do
    patch :update, id: @gibier, gibier: { icon: @gibier.icon, name: @gibier.name, type_gibier: @gibier.type_gibier }
    assert_redirected_to gibier_path(assigns(:gibier))
  end

  test "should destroy gibier" do
    assert_difference('Gibier.count', -1) do
      delete :destroy, id: @gibier
    end

    assert_redirected_to gibiers_path
  end
end
