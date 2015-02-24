class PointerIterator(T, V)
  include Enumerable(V)

  def self.string_array array : UInt8**
    new(array) {|string| String.new(string) }.to_a
  end

  def initialize @array : T*, &@converter : T -> V
  end

  def each
    return unless @array
    i = 0
    loop do
      value = @array[i]
      break unless value
      yield @converter.call(value)
      i += 1
    end
  end
end

class String
  def constant
    return self if 'A' <= self[0] <= 'Z'
    "#{self[0].upcase}#{self[1..-1]}"
  end
end


class ClosureDataManager
  def self.instance
    @@instance ||= new
  end

  def self.deregister data
    instance.deregister data
  end

  def self.deregister data, _closure
    instance.deregister data
  end

  def self.register data
    instance.register data
    data
  end

  private def initialize
    @closure_data = Hash(Void*, Int32).new {|h, k| h[k] = 0 }
  end

  def register data
    @closure_data[data] += 1
    data
  end

  def deregister data
    @closure_data[data] -= 1
    if @closure_data[data] <= 0
      @closure_data.delete data
    end
  end
end
