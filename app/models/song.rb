class Song < ActiveRecord::Base
  attr_accessible :album_id, :title, :track
  validates_presence_of :album_id, :track, :title
  belongs_to :album
end
