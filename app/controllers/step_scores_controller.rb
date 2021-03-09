class StepScoresController < ApplicationController
  before_action :set_step_score, only: %i[update]

  def update
    @assignment = Assignment.find(params[:assignment_id])
    toggle_score(@step_score)

    redirect_to assignment_path(@assignment)
  end

  private

  def set_step_score
    @step_score = StepScore.find(params[:id])
    authorize @step_score
  end

  def toggle_score(score)
    if score.completed_at.nil?
      score.completed_at = DateTime.now
    else
      score.completed_at = nil
    end
    score.save
  end
end
