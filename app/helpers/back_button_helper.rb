module BackButtonHelper
  def back_button_path(params)
    return dashboard_track_library_path if params[:controller] == 'tracks' && params[:action] == 'edit'
  end
end
