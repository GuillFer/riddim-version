class Artist < ApplicationRecord
  validates_uniqueness_of :name
  has_many :song_artists, inverse_of: :artist
  has_many :songs, through: :song_artists
  has_many :songs, foreign_key: :producer_id, primary_key: :id
  has_many :labels, foreign_key: :founder_id, primary_key: :id
  has_many :members, foreign_key: :member_id, primary_key: :id
  has_many :bands, foreign_key: :band_id, primary_key: :id
  accepts_nested_attributes_for :song_artists, allow_destroy: true
  accepts_nested_attributes_for :members, allow_destroy: true
end
