class Launch < ApplicationRecord
    has_one :pad
    has_one :mission
    has_one :rocket
    has_one :launch_service_provider
    has_one :status
end
