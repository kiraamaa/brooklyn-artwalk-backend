class Artwalk < ActiveRecord::Base
  has_many :users, through: :favorites
  has_many :favorites, dependent: :destroy
  # has_many :points, dependent: :destroy
end
