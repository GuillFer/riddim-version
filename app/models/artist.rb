class Artist < ApplicationRecord
  has_many :song_artists, inverse_of: :artist
  has_many :songs, through: :song_artists
  accepts_nested_attributes_for :song_artists, allow_destroy: true
  validates_uniqueness_of :name
  has_many :songs, foreign_key: :producer_id, primary_key: :id
end
