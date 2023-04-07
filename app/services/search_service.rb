
class SearchService
  def connection
    url = "https://api.nal.usda.gov/fdc/v1/"
    Faraday.new(url: url, params: {api_key: ENV["usda_token"]})
  end


  def food_search(food)
    response = connection.get("foods/search?query=#{food}")
    JSON.parse(response.body, symbolize_names: true)
  end
end