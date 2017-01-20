class Favorite < ActiveRecord::Base
  belongs_to :artwalk, inverse_of: :favorites
  belongs_to :user, inverse_of: :favorites
  validates :artwalk_id, presence: true
  validates :user_id, presence: true
  validates :user_id, uniqueness: { scope: :artwalk_id }
  # has_many :walks
end
