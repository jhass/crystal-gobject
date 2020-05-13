module GObject
  class PointerIterator(T, V)
    include Enumerable(V)

    def self.string_array(array : UInt8**)
      new(array) { |string| String.new(string) }.to_a
    end

    def initialize(@array : T*, &@converter : T -> V)
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
end
