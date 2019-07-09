require 'ip2location_ruby'
require 'json'


class IpToLoc
  def initialize(ip_to_loc_filename = 'IP2LOCATION-LITE-DB1.BIN')
    @i2l = Ip2location.new.open(ip_to_loc_filename)
  end

  def get_loc ip
    loc = @i2l.get_all(ip)
    {'Country_Code' => loc["country_short"] ,
     'Country_Name' => loc["country_long"] 
    }
  end

end

  