class Favorite < ActiveRecord::Base
  belongs_to :artwalk, inverse_of: :favorites
  belongs_to :user, inverse_of: :favorites
end