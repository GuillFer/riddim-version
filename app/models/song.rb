class Song < ApplicationRecord
  has_many :song_artists, dependent: :destroy
  has_many :artists, through: :song_artists
  belongs_to :label
  belongs_to :riddim
  belongs_to :producer, class_name: "Artist", foreign_key: :producer_id
  validates :producer, presence: true
end
