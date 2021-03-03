class StepsController < ApplicationController
  before_action :set_step, only: %i[destroy]

  def create
    authorize @step = Step.new(step_params)
    @track = Track.find(params[:track_id])
    @step.track = @track
    @step.save
    redirect_to edit_track_path(@track)
  end

  def destroy
    authorize @step
    @track = Track.find(params[:track_id])
    @step.destroy

    render "tracks/edit"
  end

  private

  def set_step
    @step = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:title, :description, :content_type)
  end

end
