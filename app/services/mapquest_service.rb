class MapquestService
  class << self

    def conn
      Faraday.new("http://mapquestapi.com")
    end

    def search
      response = conn.get("/search/v2/search") do |req|
        req.params[:key] = ENV["mapquest_api_key"]
      end

      JSON.parse(response.body, symbolize_names: true)
    end

    def corridor_search(line, width)
      response = conn.get("/search/v2/corridor") do |req|
        req.params[:key] = ENV["mapquest_api_key"]
        req.params[:line] = line
        req.params[:width] = width
      end

      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
