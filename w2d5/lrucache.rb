class LRUCache
    def initialize(max_length)
      @store, @max_length = [], max_length
    end

    def count
      # returns number of elements currently in cache
      @store.count
    end

    def add(el)
      # adds element to cache according to LRU principle
      @store.delete(el)
      @store << el
      @store.shift if @store.length > @max_length
    end

    def show
      # shows the items in the cache, with the LRU item first
      p @store
    end

    private
    # helper methods go here!

  end
