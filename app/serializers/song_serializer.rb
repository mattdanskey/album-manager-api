class SongSerializer < ActiveModel::Serializer
  attributes :id, :album_id, :track, :title
end
