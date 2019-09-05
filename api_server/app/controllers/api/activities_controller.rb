module Api
  class ActivitiesController < ApplicationController
    before_action :set_activity, only: [:show, :update, :destroy]
    include ::ControllerHelpers
 

 
    
    # GET /activities
    def index
      @activities = Activity.all
  
      render json: @activities
    end
  
    # GET /activities/1
    def show
      @members_attendance = get_members_attendance
      render json: [@activity, @members_attendance]
    end
  
    # POST /activities
    def create
      @activity = Activity.new(activity_params)
  
      if @activity.save
        render json: @activity, status: :created, location: @activity
      else
        render json: @activity.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /activities/1
    def update
      if @activity.update(activity_params)
        render json: @activity
      else
        render json: @activity.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /activities/1
    def destroy
      @activity.destroy
    end

    def attendance
      render json: {
        "commitment_id" => 1,
        "activity_id" => 1,
        "activity_attendance" => [{ "Frank" => true } , { "Francis" => false }, { "Francita" => true }]
      }
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_activity
        @activity = Activity.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def activity_params
        params.require(:activity).permit(:title, :date)
      end
  end
end
