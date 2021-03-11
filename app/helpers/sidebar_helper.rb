module SidebarHelper
  def sidebar_active_link(params)
    return 'my-tracks' if params[:controller] == 'dashboard' && params[:action] == 'my_tracks'
    return 'track-library' if params[:controller] == 'dashboard' && params[:action] == 'track_library'
    return 'team' if params[:controller] == 'dashboard' && params[:action] == 'team'
    return 'profile' if params[:controller] == 'dashboard' && params[:action] == 'profile'
    return 'settings' if params[:controller] == 'dashboard' && params[:action] == 'settings'
    return 'my-tracks' if params[:controller] == 'assignments' && params[:action] == 'show'
    return 'track-library' if params[:controller] == 'tracks'
  end

  def navbar_active_link(params)
    return 'My Training' if params[:controller] == 'dashboard' && params[:action] == 'my_tracks'
    return 'Training Library' if params[:controller] == 'dashboard' && params[:action] == 'track_library'
    return 'Team' if params[:controller] == 'dashboard' && params[:action] == 'team'
    return 'Profile' if params[:controller] == 'dashboard' && params[:action] == 'profile'
    return 'Settings' if params[:controller] == 'dashboard' && params[:action] == 'settings'
    return 'My Training' if params[:controller] == 'assignments' && params[:action] == 'show'
    return 'Training Library' if params[:controller] == 'tracks'
  end
end
