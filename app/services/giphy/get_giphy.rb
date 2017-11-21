require 'GiphyClient'

class GetGiphy
  def self.call
    api_instance = GiphyClient::DefaultApi.new
    api_key = ENV['GIPHY_API_KEY']
    search_term = ENV['GIPHY_SEARCH_TERM']

    result = api_instance.gifs_translate_get(api_key, search_term)
    result.data.images.fixed_height.url

  rescue GiphyClient::ApiError => e
    puts "Exception when calling DefaultApi->gifs_search_get: #{e}"
  end
end
