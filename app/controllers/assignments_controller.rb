class AssignmentsController < ApplicationController
  def create
    @assignment = Assignment.new
    authorize @assignment
    @assignment.user = User.find(assignment_params[:user_id])
    @assignment.track = Track.find(params[:track_id])

    # a1.track.steps.each do |step|
    #   StepScore.create(assignment: a1, step: step)
    # end

    if @assignment.save
      redirect_to dashboard_track_library_path
    else
      render "/dashboard/track-library"
    end
  end

  private

  def assignment_params
    params.require(:assignment).permit(:user_id)
  end
end
