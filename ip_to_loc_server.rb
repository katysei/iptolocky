require 'sinatra'
require 'json'
require_relative 'ip_to_loc'

ip_to_loc = IpToLoc.new 'IP2LOCATION-LITE-DB1.BIN'



get '/' do
  ip = params[:ip]
  if ip.nil?
  	"Nil"
  else
  	loc = ip_to_loc.get_loc ip
  	
  	"IP: #{ip},  Country Name: #{loc['Country_Name']}" 

  end
end
get '/api' do
  content_type :json
  ip = params[:ip]
  if ip.nil?
  	 {}.to_json
  else
  loc = ip_to_loc.get_loc ip 
  loc.to_json 

end
end
