class Favorite < ActiveRecord::Base
  belongs_to :artwalk, inverse_of: :favorites
  belongs_to :user, inverse_of: :favorites
  validates :title, uniqueness: true
  # has_many :walks
end
