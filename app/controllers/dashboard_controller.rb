class DashboardController < ApplicationController
  def my_tracks
    @assignments = policy_scope(Assignment, policy_scope_class: AssignmentPolicy::Scope)
  end

  def track_library
    @employees_of_manager = User.where(user_id: current_user)
    if current_user.is_manager?
      @tracks = policy_scope(Track, policy_scope_class: TrackPolicy::Scope)
    else
      authorize self
    end
    @track = Track.new

    # The line below is a reminder so that we remember how to authorize
    # a single instance of another model within the dashboard.
    # authorize @track, :show?, policy_scope_class: TrackPolicy
  end

  def team
    authorize self
    @manager = current_user.is_manager? ? current_user : User.find(current_user.user_id)
    @team = User.where(user_id: @manager)
  end

  def profile
    authorize self
  end

  def settings
    authorize self
  end
end
