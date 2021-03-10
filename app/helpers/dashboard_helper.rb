module DashboardHelper
  def dashboard_view?(params)
    return true if params[:controller] == 'dashboard'
    return true if params[:controller] == 'tracks' && params[:action] == 'edit'
    return true if params[:controller] == 'tracks' && params[:action] == 'create'
    return true if params[:controller] == 'assignments' && params[:action] == 'show'
  end
end
