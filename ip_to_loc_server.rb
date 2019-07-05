require 'sinatra'
require_relative 'ip_to_loc'

ip_to_loc = IpToLoc.new 'IP2LOCATION-LITE-DB1.BIN'

loc = ip_to_loc.get_loc '37.142.3.28'

puts  'Country Code: ' + loc.country_short + "\n"
print 'Country Name: ' + loc.country_long + "\n"


get '/' do
  ip = params[:ip]
  if ip.nil?
  	"Nil"
  else
  	loc = ip_to_loc.get_loc ip
  	"IP: #{ip} Country Name: #{loc.country_long}" 

  end
end