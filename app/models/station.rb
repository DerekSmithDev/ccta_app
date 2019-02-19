class Station < ApplicationRecord
  has_many :cta_bus_stops
  has_many :lstops
  has_many :divvystops
  has_many :bikeracks
end
