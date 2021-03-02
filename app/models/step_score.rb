class StepScore < ApplicationRecord
  belongs_to :assignment
  belongs_to :step
end
