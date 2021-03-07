class DashboardControllerPolicy
  attr_reader :user, :ctrlr

  def initialize(user, ctrlr)
    @user = user
    @ctrlr = ctrlr
  end

  def track_library?
    false
  end

  def team?
    true
  end

  def profile?
    true
  end

  def settings?
    true
  end
end
