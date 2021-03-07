class User < ApplicationRecord
  has_many :assignments, dependent: :destroy
  has_many :assigned_tracks, through: :assignments, source: :track
  has_many :owned_tracks, class_name: 'Track', foreign_key: :user_id, dependent: :destroy
  belongs_to :manager, class_name: 'User', foreign_key: :user_id, optional: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def manager?
    is_manager
  end
end
