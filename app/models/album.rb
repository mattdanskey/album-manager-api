class Album < ActiveRecord::Base
  attr_accessible :artist, :genre, :title
  validates_presence_of :artist, :title, :genre
  has_many :songs
end
