module GObject
  class ClosureDataManager
    def self.instance
      @@instance ||= new
    end

    def self.deregister(data)
      instance.deregister data
    end

    def self.deregister(data, _closure)
      instance.deregister data
    end

    def self.register(data)
      instance.register data
      data
    end

    private def initialize
      @closure_data = Hash(Void*, Int32).new { |h, k| h[k] = 0 }
    end

    def register(data)
      @closure_data[data] += 1 if data
      data
    end

    def deregister(data)
      @closure_data[data] -= 1
      if @closure_data[data] <= 0
        @closure_data.delete data
      end
    end
  end
end
