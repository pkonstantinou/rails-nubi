class Track < ApplicationRecord
  belongs_to :user
  has_many :steps, dependent: :destroy
  has_many :assignments, dependent: :destroy
  has_many :assigned_users, through: :assignments, source: :user

  validates :title, presence: true
end
