class StepsController < ApplicationController
  before_action :set_step, only: %i[destroy]

  def create
    authorize @step = Step.new(step_params)
    @track = Track.find(params[:track_id])
    @step.track = @track
    if @step.save
      redirect_to edit_track_path(@track)
    else
      render "tracks/edit"
    end
  end

  def destroy
    authorize @step
    @track = Track.find(params[:track_id])
    @step.media.purge if @step.media.attached?
    @step.destroy

    render "tracks/edit"
  end

  private

  def set_step
    @step = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:title, :description, :content_type, :media)
  end
end
