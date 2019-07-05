require 'ip2location_ruby'


class IpToLoc
  def initialize(ip_to_loc_filename = 'IP2LOCATION-LITE-DB1.BIN')
    @i2l = Ip2location.new.open(ip_to_loc_filename)
  end

  def get_loc ip
    loc = @i2l.get_all(ip)
  end

end

  