class StepPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.track.user = user
  end

  def destroy?
    record.track.user = user
  end

  def edit?
    record.track.user = user
  end
end
