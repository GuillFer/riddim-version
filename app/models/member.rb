class Member < ApplicationRecord
  belongs_to :member, class_name: "Artist"
  belongs_to :band, class_name: "Artist"
end
