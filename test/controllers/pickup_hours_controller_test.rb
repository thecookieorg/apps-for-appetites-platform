require 'test_helper'

class PickupHoursControllerTest < ActionController::TestCase
  setup do
    @pickup_hour = pickup_hours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pickup_hours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pickup_hour" do
    assert_difference('PickupHour.count') do
      post :create, pickup_hour: { friday: @pickup_hour.friday, monday: @pickup_hour.monday, saturday: @pickup_hour.saturday, sunday: @pickup_hour.sunday, thursday: @pickup_hour.thursday, tuesday: @pickup_hour.tuesday, wednesday: @pickup_hour.wednesday }
    end

    assert_redirected_to pickup_hour_path(assigns(:pickup_hour))
  end

  test "should show pickup_hour" do
    get :show, id: @pickup_hour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pickup_hour
    assert_response :success
  end

  test "should update pickup_hour" do
    patch :update, id: @pickup_hour, pickup_hour: { friday: @pickup_hour.friday, monday: @pickup_hour.monday, saturday: @pickup_hour.saturday, sunday: @pickup_hour.sunday, thursday: @pickup_hour.thursday, tuesday: @pickup_hour.tuesday, wednesday: @pickup_hour.wednesday }
    assert_redirected_to pickup_hour_path(assigns(:pickup_hour))
  end

  test "should destroy pickup_hour" do
    assert_difference('PickupHour.count', -1) do
      delete :destroy, id: @pickup_hour
    end

    assert_redirected_to pickup_hours_path
  end
end
