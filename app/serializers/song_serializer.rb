class SongSerializer < ActiveModel::Serializer
  attributes :id, :albumId, :track, :title
end
