class PointSerializer < ActiveModel::Serializer
  attributes :id, :lat, :lng, :title, :content, :done, :artwalk

  def artwalk
    object.artwalk.id
  end
end
