class Restaurant < ActiveRecord::Base
    geocoded_by :full_address   # can also be an IP address
    after_validation :geocode          # auto-fetch coordinates
end
