class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :title, :artwalk_id
  has_one :artwalk
  has_one :user

  # def artwalk
  #   object.artwalk.id
  # end
  #
  # def user
  #   object.user.id
  # end
end
