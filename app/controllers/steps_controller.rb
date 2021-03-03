class StepsController < ApplicationController
  before_action :set_step, only: %i[destroy]

  def destroy
    authorize @step
    @track = Track.find(params[:track_id])
    @step.destroy

    # TODO: check if code below is working
    render tracks_path(@track)
    # render "index"
  end

  private

  def set_step
    @step = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:title, :description, :content_type)
  end

end
