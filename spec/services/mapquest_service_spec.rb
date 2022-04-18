require 'rails_helper'

RSpec.describe MapquestService do
  it 'creates a faradasy connection' do
    expect(MapquestService.conn).to be_a Faraday::Connection
  end

  it 'can find a point of interest', :vcr do
    locations = MapquestService.search
    
    expect(locations).to be_a Hash
    expect(locations).to have_key :searchResults
  end
end
