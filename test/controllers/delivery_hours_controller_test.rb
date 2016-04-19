require 'test_helper'

class DeliveryHoursControllerTest < ActionController::TestCase
  setup do
    @delivery_hour = delivery_hours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delivery_hours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delivery_hour" do
    assert_difference('DeliveryHour.count') do
      post :create, delivery_hour: { friday: @delivery_hour.friday, friday_closing_time: @delivery_hour.friday_closing_time, monday: @delivery_hour.monday, monday_closing_time: @delivery_hour.monday_closing_time, saturday: @delivery_hour.saturday, saturday_closing_time: @delivery_hour.saturday_closing_time, sunday: @delivery_hour.sunday, sunday_closing_time: @delivery_hour.sunday_closing_time, thursday: @delivery_hour.thursday, thursday_closing_time: @delivery_hour.thursday_closing_time, tuesday: @delivery_hour.tuesday, tuesday_closing_time: @delivery_hour.tuesday_closing_time, wednesday: @delivery_hour.wednesday, wednesday_closing_time: @delivery_hour.wednesday_closing_time }
    end

    assert_redirected_to delivery_hour_path(assigns(:delivery_hour))
  end

  test "should show delivery_hour" do
    get :show, id: @delivery_hour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delivery_hour
    assert_response :success
  end

  test "should update delivery_hour" do
    patch :update, id: @delivery_hour, delivery_hour: { friday: @delivery_hour.friday, friday_closing_time: @delivery_hour.friday_closing_time, monday: @delivery_hour.monday, monday_closing_time: @delivery_hour.monday_closing_time, saturday: @delivery_hour.saturday, saturday_closing_time: @delivery_hour.saturday_closing_time, sunday: @delivery_hour.sunday, sunday_closing_time: @delivery_hour.sunday_closing_time, thursday: @delivery_hour.thursday, thursday_closing_time: @delivery_hour.thursday_closing_time, tuesday: @delivery_hour.tuesday, tuesday_closing_time: @delivery_hour.tuesday_closing_time, wednesday: @delivery_hour.wednesday, wednesday_closing_time: @delivery_hour.wednesday_closing_time }
    assert_redirected_to delivery_hour_path(assigns(:delivery_hour))
  end

  test "should destroy delivery_hour" do
    assert_difference('DeliveryHour.count', -1) do
      delete :destroy, id: @delivery_hour
    end

    assert_redirected_to delivery_hours_path
  end
end
