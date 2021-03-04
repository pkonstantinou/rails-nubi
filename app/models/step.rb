class Step < ApplicationRecord
  belongs_to :track
  has_many :step_scores, dependent: :destroy
  has_one_attached :media

  validates :title, presence: true
  validates :content_type, presence: true
end
