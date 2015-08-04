class HomeController < ApplicationController
  def index
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "tbAVrOKqVOIcL1oF0rKadJ6u7"
      config.consumer_secret     = "Rv8iygnmryB6Zuffsx8T3R6A45ZlrnpPCZjRf62nAhdff1qqia"
      config.access_token        = "353428664-2F0iPSHITiDwvJAf7Wuw3AKNZBwEdcztkzHLFeR5"
      config.access_token_secret = "E9iViX7nALHloE3pckYwbEPtzytu6cgNjfxnGsIcgoLT3"
    end
    @location = Location.all
    @trends = @client.trends(id = @location[0])


  end

end

