class MapquestFacade
  class << self
    def search
      payload = MapquestService.search
      payload[:searchResults].map do |result|
        Hotspot.new(result)
      end
    end
  end
end
