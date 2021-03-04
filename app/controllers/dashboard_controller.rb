class DashboardController < ApplicationController
  def my_tracks
    @tracks = policy_scope(Track, policy_scope_class: TrackPolicy::Scope)
    # authorize @track, :show?, policy_scope_class: TrackPolicy
  end

  def track_library
    authorize self
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
