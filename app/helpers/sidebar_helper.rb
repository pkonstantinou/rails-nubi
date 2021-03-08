module SidebarHelper
  def sidebar_active_link(params)
    return 'my-tracks' if params[:controller] == 'dashboard' && params[:action] == 'my_tracks'
    return 'track-library' if params[:controller] == 'dashboard' && params[:action] == 'track_library'
    return 'team' if params[:controller] == 'dashboard' && params[:action] == 'team'
    return 'profile' if params[:controller] == 'dashboard' && params[:action] == 'profile'
    return 'settings' if params[:controller] == 'dashboard' && params[:action] == 'settings'
    return 'track-library' if params[:controller] == 'tracks'
  end

  def navbar_active_link(params)
    return 'My Tracks' if params[:controller] == 'dashboard' && params[:action] == 'my_tracks'
    return 'Track Library' if params[:controller] == 'dashboard' && params[:action] == 'track_library'
    return 'Team' if params[:controller] == 'dashboard' && params[:action] == 'team'
    return 'Profile' if params[:controller] == 'dashboard' && params[:action] == 'profile'
    return 'Settings' if params[:controller] == 'dashboard' && params[:action] == 'settings'
    return 'Track Library' if params[:controller] == 'tracks'
  end
end
