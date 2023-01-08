class Pad < ApplicationRecord
    belongs_to :launch
    has_one :location
    belongs_to :agency
end
