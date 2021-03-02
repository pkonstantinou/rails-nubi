class Assignment < ApplicationRecord
  belongs_to :user
  belongs_to :track
  has_many :step_scores
end
