class MapquestService
  class << self

    def conn
      Faraday.new("http://mapquestapi.com")
    end

    #set for broad search.. needs to be updated for corridor search with route as q param
    #conn.get changes to "/search/v2/corridor"
    def search
      response = conn.get("/search/v2/search") do |req|
        req.params[:key] = ENV["mapquest_api_key"]
      end

      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
