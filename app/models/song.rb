class Song < ApplicationRecord
  belongs_to :label
  belongs_to :riddim
  has_many :song_artists, dependent: :destroy
  has_many :artists, through: :song_artists
  #
  belongs_to :producer, class_name: "Artist", foreign_key: :producer_id
end
