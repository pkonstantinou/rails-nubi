class AssignmentsController < ApplicationController
  before_action :set_assignment, only: %i[show destroy]

  def show
  end

  def create
    authorize @assignment = Assignment.new
    @assignment.user = User.find(assignment_params[:user_id])
    @assignment.track = Track.find(params[:track_id])
    @assignment.track.steps.each do |step|
      StepScore.create(assignment: @assignment, step: step)
    end
    if @assignment.save
      redirect_to dashboard_track_library_path
    else
      render "/dashboard/track-library"
    end
  end

  def destroy
    @assignment.destroy
    redirect_to dashboard_settings_path
  end

  private

  def set_assignment
    @assignment = Assignment.find(params[:id])
    authorize @assignment
  end

  def assignment_params
    params.require(:assignment).permit(:user_id)
  end
end
