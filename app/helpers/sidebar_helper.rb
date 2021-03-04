module SidebarHelper
  def sidebar_active_link(params)
    return 'my-tracks' if params[:controller] == 'dashboard' && params[:action] == 'my_tracks'
    return 'track-library' if params[:controller] == 'dashboard' && params[:action] == 'track_library'
  end
end
