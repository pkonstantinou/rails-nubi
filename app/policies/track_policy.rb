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
    true
  end

  def destroy?
    record.user == user
  end

  def update?
    true
    # For some reason record.user == user is not working, record does not have method user?
    # record.user == user
  end
end
