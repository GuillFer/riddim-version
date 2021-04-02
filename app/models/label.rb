class Label < ApplicationRecord
  validates_uniqueness_of :name
  belongs_to :founder, class_name: "Artist", foreign_key: :founder_id, optional: true
end
