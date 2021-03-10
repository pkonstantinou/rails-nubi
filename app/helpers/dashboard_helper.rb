module DashboardHelper
  def dashboard_view?(params)
    return true if params[:controller] == 'dashboard'
    return true if params[:controller] == 'tracks' && params[:action] == 'edit'
    return true if params[:controller] == 'tracks' && params[:action] == 'create'
    return true if params[:controller] == 'assignments' && params[:action] == 'show'
  end

  def dashboard_path
    return dashboard_track_library_path if current_user.is_manager?

    return dashboard_my_tracks_path
  end
end
