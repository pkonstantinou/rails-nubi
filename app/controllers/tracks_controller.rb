class TracksController < ApplicationController
  before_action :set_track, only: %i[destroy edit] # :update

  def index
    @tracks = policy_scope(Track)
    @track = Track.new
  end

  def edit
    authorize @track
    @step = Step.new
  end

  def update
    authorize @track
    if @track.save
      redirect_to track_path(@track)
    else
      redirect_to tracks_path
      # render "index"
    end
  end

  def create
    authorize @track = Track.new(track_params)
    @tracks = policy_scope(Track)
    @track.user = current_user
    if @track.save
      redirect_to tracks_path
    else
      render "index"
    end
  end

  def destroy
    authorize @track
    # @track.photos.purge if @track.photos.attached?
    @track.destroy

    redirect_to tracks_path
    # render "index"
  end

  private

  def set_track
    @track = Track.find(params[:id])
  end

  def track_params
    params.require(:track).permit(:title, :is_global)
  end

end
