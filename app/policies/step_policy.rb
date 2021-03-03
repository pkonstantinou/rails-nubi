class StepPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def destroy?
    true
    # record.user == user
  end

  def create?
    true
    # record.user == user
  end

  def edit?
    true
    # record.user == user
  end
end
