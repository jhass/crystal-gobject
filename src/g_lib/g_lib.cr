require "../generated/g_lib"
require "./*"
require "../helper"

module GLib
  def self.idle_add(&block : -> Bool)
    LibGLib.idle_add(
      LibGLib::PRIORITY_DEFAULT_IDLE,
      LibGLib::SourceFunc.new(block.pointer, Pointer(Void).null),
      ClosureDataManager.register(block.closure_data),
      ->ClosureDataManager.deregister
    )
  end

  def self.timeout seconds, &block : -> Bool
    LibGLib.timeout_add_seconds(
      LibGLib::PRIORITY_DEFAULT_IDLE,
      UInt32.cast(seconds),
      LibGLib::SourceFunc.new(block.pointer, Pointer(Void).null),
      ClosureDataManager.register(block.closure_data),
      ->ClosureDataManager.deregister
    )
  end
end
