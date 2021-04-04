class Label < ApplicationRecord
  validates_uniqueness_of :name
  belongs_to :founder, class_name: "Artist", foreign_key: :founder_id, optional: true
  belongs_to :parent, class_name: "Label", optional: true
  # has_many :children, class_name: "Label" foreign_key: "parent_id"
end
