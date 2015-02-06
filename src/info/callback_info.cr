require "./base_info"

class CallbackInfo < BaseInfo
  include GICallableInfo

  def definition
    String.build do |io|
      io << "  # Callback: #{name}("
      io << args.map(&.definition).join(", ")
      io << ") : #{return_type.definition}"
    end
  end
end
