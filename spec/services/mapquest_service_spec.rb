require 'rails_helper'

RSpec.describe MapquestService do
  it 'creates a faradasy connection' do
    expect(MapquestService.conn).to be_a Faraday::Connection
  end

  it 'can do a general search', :vcr do
    locations = MapquestService.search

    expect(locations).to be_a Hash
    expect(locations).to have_key :searchResults
  end

  it 'can search a route for points of interest', :vcr do
    route = "39.96488,-76.729949,41.099998,-76.305603,39.899011,-76.164335,39.099998,-78.305603"
    locations = MapquestService.corridor_search(route, 5)

    expect(locations).to be_a Hash
    expect(locations).to have_key :searchResults
  end
end
