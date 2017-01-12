class FavoriteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :artwalk
  has_one :user
end
