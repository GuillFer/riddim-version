class Riddim < ApplicationRecord
  validates_uniqueness_of :title
end
