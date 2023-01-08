class Location < ApplicationRecord
    belongs_to :pad

    # has_one_attached :map_image
end
