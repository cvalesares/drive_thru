require 'rails_helper'

RSpec.describe MapquestFacade do
  it 'can create a hotspot address from json', :vcr do
    hot_spot = MapquestFacade.search

    expect(hot_spot.first).to be_an_instance_of Hotspot
  end
end
