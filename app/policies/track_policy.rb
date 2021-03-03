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
    true
    # record.user == user
  end

  def update?
    true
    # record.user == user
  end
end
