class Rocket < ApplicationRecord
    belongs_to :launch
    has_one :configuration
end
