class Map
  # uses an array of tuples to model a dictionary abstract
  # data type.
  attr_accessor :map

  def initialize
    @map = []
  end

  def [](index)
    map[index]
  end

  def []=(index, value)
    map[index] = value
  end

  def assign(key, value)
    if index(key).nil?
      map.push([key, value])
    else
      map[index(key)] = [key, value]
    end
    map
  end

  def remove(key)
    map.reject! { |pair| pair.first == key }
    map
  end

  def lookup(key)
    # returns nil if the key isn't in the map, otherwise
    # returns the definition
    index(key).nil? ? nil : map[index(key)].last
  end

  def show
    map
  end

  private
  
  def index(key)
    # returns nil if the key is not in the map
    # returns the index of the key otherwise

    key_index = nil

    map.each_with_index do |pair, index|
      if pair.first == key
        key_index = index
        break
      end
    end
    key_index
  end

end
