class Agency < ApplicationRecord
    belongs_to :pad
    has_one :pad
end
