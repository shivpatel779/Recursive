class GoalsController < ApplicationController
	before_action :get_goal, only: [:show, :update]

	def show
	end

	def update
		@goal.update(progress: params[:progress])
		render json: {status: "OK"}
	end

	private

  def get_goal
    @goal = Goal.find(params[:id])
  end
end
