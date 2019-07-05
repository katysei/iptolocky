require 'sinatra'
require_relative 'ip_to_loc'

ip_to_loc = IpToLoc.new 'IP2LOCATION-LITE-DB1.BIN'



get '/' do
  ip = params[:ip]
  if ip.nil?
  	"Nil"
  else
  	loc = ip_to_loc.get_loc ip
  	"IP: #{ip} Country Name: #{loc.country_long}" 

  end
end
