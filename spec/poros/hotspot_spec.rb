require 'rails_helper'

RSpec.describe Hotspot do
  before :each do
    @hotspot1 = MapquestFacade.search.first
  end

  it 'exists', :vcr do
    expect(@hotspot1).to be_an_instance_of Hotspot
  end

  it 'has readable attributes', :vcr do
    expect(@hotspot1.name).to eq("Eagle Point Village Apartments")
    expect(@hotspot1.distance).to eq(0.1038)
    expect(@hotspot1.address).to eq("830 Allonby Rd")
    expect(@hotspot1.city).to eq("Fayetteville")
    expect(@hotspot1.state).to eq("NC")
  end
end
