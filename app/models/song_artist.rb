class SongArtist < ApplicationRecord
  belongs_to :artist
  belongs_to :song
  validates_presence_of :artist, :song
  accepts_nested_attributes_for :song
end
