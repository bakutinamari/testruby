require_relative 'instance_counter'

class Route
  include InstanceCounter
    attr_reader :stations
  
    def initialize(station_first,station_last)
      @stations = [station_first,station_last]
    end
  
    def add_station(station)
      stations.insert(-2, station)
    end
  
    def del_station(station)
      stations.delete(station)
    end
  end
