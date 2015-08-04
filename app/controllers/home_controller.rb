class HomeController < ApplicationController
  def index
  # begin
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "tbAVrOKqVOIcL1oF0rKadJ6u7"
      config.consumer_secret     = "Rv8iygnmryB6Zuffsx8T3R6A45ZlrnpPCZjRf62nAhdff1qqia"
      config.access_token        = "353428664-2F0iPSHITiDwvJAf7Wuw3AKNZBwEdcztkzHLFeR5"
      config.access_token_secret = "E9iViX7nALHloE3pckYwbEPtzytu6cgNjfxnGsIcgoLT3"
    end

    @location1 = Location.find(1)
    @location2 = Location.find(10)
    @location3 = Location.find(22)

    @woeid = [@location1, @location2, @location3]
    
  # rescue
  #   flash[:notice] = "It looks like something has gone wrong"
  end
end

