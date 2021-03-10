module AssignmentScoreHelper
  def assignment_score(assignment)
    score = 0
    assignment.step_scores.each do |step_score|
      score += 1 unless step_score.completed_at.nil?
    end
    ((score.to_f / assignment.step_scores.length) * 100).round
  end

  def assignment_completed?(assignment)
    assignment.step_scores.none? { |step_score| step_score.completed_at.nil? }
  end
end
