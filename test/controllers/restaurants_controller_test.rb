require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post :create, restaurant: { accept_orders_for_later: @restaurant.accept_orders_for_later, delivery: @restaurant.delivery, full_address: @restaurant.full_address, pickup: @restaurant.pickup, restaurant_name: @restaurant.restaurant_name, restaurant_phone_number: @restaurant.restaurant_phone_number }
    end

    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should show restaurant" do
    get :show, id: @restaurant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant
    assert_response :success
  end

  test "should update restaurant" do
    patch :update, id: @restaurant, restaurant: { accept_orders_for_later: @restaurant.accept_orders_for_later, delivery: @restaurant.delivery, full_address: @restaurant.full_address, pickup: @restaurant.pickup, restaurant_name: @restaurant.restaurant_name, restaurant_phone_number: @restaurant.restaurant_phone_number }
    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete :destroy, id: @restaurant
    end

    assert_redirected_to restaurants_path
  end
end
