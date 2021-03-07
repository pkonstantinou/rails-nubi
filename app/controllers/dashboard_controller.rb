class DashboardController < ApplicationController
  def my_tracks
    @tracks = policy_scope(Track, policy_scope_class: TrackPolicy::Scope)
    @track = Track.new

    # The line below is a reminder so that we remember how to authorize
    # a single instance of another model within the dashboard.
    # authorize @track, :show?, policy_scope_class: TrackPolicy
  end

  def track_library
    if current_user.manager?
      @tracks = policy_scope(Track, policy_scope_class: TrackPolicy::Scope)
    else
      authorize self
    end
    @track = Track.new
  end

  def team
    authorize self
  end

  def profile
    authorize self
  end

  def settings
    authorize self
  end
end
