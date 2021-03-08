class Assignment < ApplicationRecord
  belongs_to :user
  belongs_to :track
  has_many :step_scores

  def completed?
    num_of_steps == num_of_steps_completed
  end

  def num_of_steps
    step_scores.count
  end

  def num_of_steps_completed
    step_scores.reject { |step_score| step_score.completed_at.nil? }.count
  end
end
