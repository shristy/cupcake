require 'test_helper'

class CupcakesControllerTest < ActionController::TestCase
  setup do
    @cupcake = cupcakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cupcakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cupcake" do
    assert_difference('Cupcake.count') do
      post :create, cupcake: { flavour: @cupcake.flavour, price: @cupcake.price }
    end

    assert_redirected_to cupcake_path(assigns(:cupcake))
  end

  test "should show cupcake" do
    get :show, id: @cupcake
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cupcake
    assert_response :success
  end

  test "should update cupcake" do
    patch :update, id: @cupcake, cupcake: { flavour: @cupcake.flavour, price: @cupcake.price }
    assert_redirected_to cupcake_path(assigns(:cupcake))
  end

  test "should destroy cupcake" do
    assert_difference('Cupcake.count', -1) do
      delete :destroy, id: @cupcake
    end

    assert_redirected_to cupcakes_path
  end
end
