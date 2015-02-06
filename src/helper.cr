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


macro each_converted(prefix, basename, type, plural=nil)
  def each_{{basename.id}}
    n = LibGIRepository.{{prefix.id}}_get_n_{{plural ? plural.id : "#{basename}s".id}}(self)
    0.upto(n-1) do |index|
      yield {{type.id}}.new LibGIRepository.{{prefix.id}}_get_{{basename.id}}(self, index)
    end
  end
end
