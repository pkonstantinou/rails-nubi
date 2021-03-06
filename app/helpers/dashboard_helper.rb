module DashboardHelper
  def dashboard_view?(params)
    return true if params[:controller] == 'dashboard'
    return true if params[:controller] == 'tracks' && params[:action] == 'edit'
  end
end
