class HomeController < ApplicationController
  def index
    # @client = Twitter::REST::Client.new do |config|
    #   config.consumer_key        = "tbAVrOKqVOIcL1oF0rKadJ6u7"
    #   config.consumer_secret     = "Rv8iygnmryB6Zuffsx8T3R6A45ZlrnpPCZjRf62nAhdff1qqia"
    #   config.access_token        = "353428664-2F0iPSHITiDwvJAf7Wuw3AKNZBwEdcztkzHLFeR5"
    #   config.access_token_secret = "E9iViX7nALHloE3pckYwbEPtzytu6cgNjfxnGsIcgoLT3"
    # end

    @feed = [{:name=>"#ArchThatBackChallenge", :query=>"%23ArchThatBackChallenge", :url=>"http://twitter.com/search?q=%23ArchThatBackChallenge", :promoted_content=>nil}, {:name=>"Kelly Osbourne", :query=>"%22Kelly+Osbourne%22", :url=>"http://twitter.com/search?q=%22Kelly+Osbourne%22", :promoted_content=>nil}, {:name=>"Dave Dombrowski", :query=>"%22Dave+Dombrowski%22", :url=>"http://twitter.com/search?q=%22Dave+Dombrowski%22", :promoted_content=>nil}, {:name=>"Lenny Kravitz", :query=>"%22Lenny+Kravitz%22", :url=>"http://twitter.com/search?q=%22Lenny+Kravitz%22", :promoted_content=>nil}, {:name=>"#ActionMoviesTaughtUs", :query=>"%23ActionMoviesTaughtUs", :url=>"http://twitter.com/search?q=%23ActionMoviesTaughtUs", :promoted_content=>nil}, {:name=>"Perrie", :query=>"Perrie", :url=>"http://twitter.com/search?q=Perrie", :promoted_content=>nil}, {:name=>"#WhenNoOneIsLooking", :query=>"%23WhenNoOneIsLooking", :url=>"http://twitter.com/search?q=%23WhenNoOneIsLooking", :promoted_content=>nil}, {:name=>"Arian Foster", :query=>"%22Arian+Foster%22", :url=>"http://twitter.com/search?q=%22Arian+Foster%22", :promoted_content=>nil}, {:name=>"#WHDemoDay", :query=>"%23WHDemoDay", :url=>"http://twitter.com/search?q=%23WHDemoDay", :promoted_content=>nil}, {:name=>"Miss Piggy", :query=>"%22Miss+Piggy%22", :url=>"http://twitter.com/search?q=%22Miss+Piggy%22", :promoted_content=>nil}]

    if !current_user.nil? 
      @location1_id = User.find(session[:user_id]).location1
      @location2_id = User.find(session[:user_id]).location2 
      @location3_id = User.find(session[:user_id]).location3 
    
      @location1 = Location.find(@location1_id)
      @location2 = Location.find(@location2_id)
      @location3 = Location.find(@location3_id)
    else
      @location1 = Location.find(1)
      @location2 = Location.find(11)
      @location3 = Location.find(28)
    end
    
    @woeid = [@location1, @location2, @location3]

    @location = Location.all
    @user = User.find(session[:user_id]) if session[:user_id]     
    
    if !current_user.nil?
      flash[:notice] = "Let's see what's trending, " <<current_user.user_name.capitalize + "."
    end
    
  end
end

