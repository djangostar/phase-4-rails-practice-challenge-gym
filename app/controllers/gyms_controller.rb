class GymsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def show
        gym = Gym.find_by!(id: params[:id])
        render json: gym
    end

    def destroy
        gym = Gym.find_by!(id: params[:id])
        gym.destroy
        render json: {}
    end

    private

    def render_not_found_response
        render json: {error: "Gym Not Found"}, status: :not_found
    end
end
