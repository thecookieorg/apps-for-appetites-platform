class PickupHoursController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  before_action :set_pickup_hour, only: [:show, :edit, :update, :destroy]

  # GET /pickup_hours
  # GET /pickup_hours.json
  def index
    @pickup_hours = PickupHour.all
  end

  # GET /pickup_hours/1
  # GET /pickup_hours/1.json
  def show
  end

  # GET /pickup_hours/new
  def new
    @pickup_hour = PickupHour.new
  end

  # GET /pickup_hours/1/edit
  def edit
  end

  # POST /pickup_hours
  # POST /pickup_hours.json
  def create
    @pickup_hour = PickupHour.new(pickup_hour_params)

    respond_to do |format|
      if @pickup_hour.save
        format.html { redirect_to @pickup_hour, notice: 'Pickup hour was successfully created.' }
        format.json { render :show, status: :created, location: @pickup_hour }
      else
        format.html { render :new }
        format.json { render json: @pickup_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pickup_hours/1
  # PATCH/PUT /pickup_hours/1.json
  def update
    respond_to do |format|
      if @pickup_hour.update(pickup_hour_params)
        format.html { redirect_to @pickup_hour, notice: 'Pickup hour was successfully updated.' }
        format.json { render :show, status: :ok, location: @pickup_hour }
      else
        format.html { render :edit }
        format.json { render json: @pickup_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pickup_hours/1
  # DELETE /pickup_hours/1.json
  def destroy
    @pickup_hour.destroy
    respond_to do |format|
      format.html { redirect_to pickup_hours_url, notice: 'Pickup hour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pickup_hour
      @pickup_hour = PickupHour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pickup_hour_params
      params.require(:pickup_hour).permit(:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :monday_closing_time, :tuesday_closing, :wednesday_closing_time, :thursday_closing_time, :friday_closing_time, :saturday_closing_time, :sunday_closing_time)
    end
end
