class Riddim < ApplicationRecord
  validates_uniqueness_of :title
  has_many :songs
end
