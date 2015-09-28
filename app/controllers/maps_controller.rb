class MapsController < ApplicationController
	 skip_before_filter :verify_authenticity_token  
  def go
  end
  def save
  	@query = params["query"].tr(' ', '+')
  	Map.create :query_text => @query, :geoLat => params["latitude"], :geoLan => params["longitude"]
  	redirect_to "/go?query=#{@query}&at=#{params['latitude']}&on=#{params['longitude']}"
  end
end
