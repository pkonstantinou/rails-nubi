module SidebarHelper
  def sidebar_active_link(params)
    return 'my-tracks' if params[:controller] == 'dashboard' && params[:action] == 'my_tracks'
    return 'track-library' if params[:controller] == 'dashboard' && params[:action] == 'track_library'
    return 'team' if params[:controller] == 'dashboard' && params[:action] == 'team'
    return 'profile' if params[:controller] == 'dashboard' && params[:action] == 'profile'
    return 'settings' if params[:controller] == 'dashboard' && params[:action] == 'settings'
    return 'track-library' if params[:controller] == 'tracks' && params[:action] == 'edit'
  end
end
