class User < ActiveRecord::Base
  include Authentication
  # has_many :examples
  has_many :favorites, dependent: :destroy
  has_many :artwalks, through: :favorites
end
