class MapquestFacade
  class << self
    def search
      payload = MapquestService.search
      payload[:searchResults].map do |result|
        Hotspot.new(result)
      end
    end

    def corridor_search(line, width)
      payload = MapquestService.corridor_search(line, width)
      payload[:searchResults].map do |result|
        Hotspot.new(result)
      end
    end
  end
end
