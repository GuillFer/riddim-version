class Song < ApplicationRecord
  has_many :song_artists, inverse_of: :song, dependent: :destroy
  accepts_nested_attributes_for :song_artists, allow_destroy: true
  has_many :artists, through: :song_artists
  belongs_to :label
  belongs_to :riddim
  belongs_to :producer, class_name: "Artist", foreign_key: :producer_id
  validates :producer, presence: true
end
