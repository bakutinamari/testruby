require_relative 'instance_counter'

class Station
  include InstanceCounter
  attr_reader :name, :trains
  
  @@stations = []
  def self.all
    @@stations
  end
  
  def initialize(name)
    @name = name
    @trains = []
    @@stations.push(self)
  end
  
  def add_train(train)
    trains << train
  end
  
  def del_train(train)
    trains.delete(train)
  end
  
  def get_trains_type(train_type)
    trains.select{|x|x.train_type == train_type}
  end
end
