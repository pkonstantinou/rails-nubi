class TracksController < ApplicationController

  def index
    @tracks = policy_scope(Track)
    @track = Track.new
  end

  def show
    authorize @track = Track.find(params[:id])
  end

  def create
    authorize @track = Track.new(track_params)
    @track.user = current_user
    if @track.save
      redirect_to track_path(@track)
    else
      redirect_to tracks_path
      # render "index"
    end
  end

  def destroy
    authorize @track = Track.find(params[:id])
    # @track.photos.purge if @track.photos.attached?
    @track.destroy

    redirect_to tracks_path
    # render "index"
  end

  private

  def track_params
    params.require(:track).permit(:title, :is_global)
  end
end
