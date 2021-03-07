class TrackPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    user.is_manager
  end

  def destroy?
    record.user == user
  end

  def update?
    record.user == user
  end
end
