class Hotspot
  attr_reader :name,
              :distance,
              :address,
              :city,
              :state

  def initialize(data)
    @name       = data[:name]
    @distance   = data[:distance]
    @address    = data[:fields][:address]
    @city       = data[:fields][:city]
    @state      = data[:fields][:state]
  end
end
