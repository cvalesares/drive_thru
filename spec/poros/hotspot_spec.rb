require 'rails_helper'

RSpec.describe Hotspot do
  before :each do
    @hotspot1 = MapquestFacade.search.first
    @hotspot2 = MapquestFacade.corridor_search("39.96488,-76.729949,41.099998,-76.305603,39.899011,-76.164335,39.099998,-78.305603", 5).first
  end

  it 'exists', :vcr do
    expect(@hotspot1).to be_an_instance_of Hotspot
    expect(@hotspot2).to be_an_instance_of Hotspot
  end

  it 'has readable attributes', :vcr do
    expect(@hotspot1.name).to eq("Eagle Point Village Apartments")
    expect(@hotspot1.distance).to eq(0.1038)
    expect(@hotspot1.address).to eq("830 Allonby Rd")
    expect(@hotspot1.city).to eq("Fayetteville")
    expect(@hotspot1.state).to eq("NC")
    expect(@hotspot2.name).to eq("Hagemeyer North America")
    expect(@hotspot2.distance).to eq(0.0001)
    expect(@hotspot2.address).to eq("2740 S Pleasant Valley Rd")
    expect(@hotspot2.city).to eq("Winchester")
    expect(@hotspot2.state).to eq("VA")
  end
end
