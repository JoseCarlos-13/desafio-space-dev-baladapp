class Program < ApplicationRecord
    has_many :agencies

    has_one_attached :map_image
end
