class Artist < ApplicationRecord
  has_many :song_artists
  has_many :songs, through: :song_artists
  validates_uniqueness_of :name
  #
  has_many :songs, foreign_key: :producer_id, primary_key: :id
end
