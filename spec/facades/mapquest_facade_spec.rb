require 'rails_helper'

RSpec.describe MapquestFacade do
  it 'can create a hotspot address from json', :vcr do
    hot_spot = MapquestFacade.search

    expect(hot_spot.first).to be_an_instance_of Hotspot
  end

  it 'can create a group of hotspots from a route', :vcr do
    route = "39.96488,-76.729949,41.099998,-76.305603,39.899011,-76.164335,39.099998,-78.305603"
    hot_spots = MapquestFacade.corridor_search(route, 5)

    expect(hot_spots.first).to be_an_instance_of Hotspot
  end
end
