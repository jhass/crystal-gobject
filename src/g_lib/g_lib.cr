require "../generated/g_lib"
require "./*"

module GLib
  def self.idle_add(&block : -> Bool)
    idle_add LibGLib::PRIORITY_DEFAULT_IDLE,
             LibGLib::SourceFunc.new(block.pointer, Pointer(Void).null),
             block.closure_data,
             nil
  end

  def self.timeout seconds, &block : -> Bool
    timeout_add_seconds LibGLib::PRIORITY_DEFAULT_IDLE,
                        seconds,
                        LibGLib::SourceFunc.new(block.pointer, Pointer(Void).null),
                        block.closure_data,
                        nil
  end
end
