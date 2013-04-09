class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :genre
end
