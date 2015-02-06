require "./base_info"

class FunctionInfo < BaseInfo
  include GICallableInfo

  def symbol
    String.new LibGIRepository.function_info_get_symbol(self)
  end

  def prefix
    prefix = container.name
             .gsub(/[A-Z][a-z]*(?=[A-Z])/) {|m| "#{m.downcase}_" }
             .downcase
    "#{prefix}_"
  rescue
    ""
  end

  def definition
    String.build do |io|
      io << "  fun #{prefix}#{name} = #{symbol}("
      io << args.map(&.definition).join(", ")
      io << ") : #{return_type.definition}"
    end
  end
end
