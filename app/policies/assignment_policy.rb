class AssignmentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    record.user == user
  end

  def create?
    user.is_manager
  end

  def destroy?
    true
    # true was set only for the demo day.
    # In real senario needs to be as follows:
    # record.user.manager == user
  end
end
