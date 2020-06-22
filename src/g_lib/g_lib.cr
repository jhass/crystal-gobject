require "../gobject"
require_gobject "GLib"

require "./*"
require "../closure_data_manager"

module GLib
  def self.idle_add(&block : -> Bool)
    trampoline = LibGLib::SourceFunc.new { block.call ? 1 : 0 }
    LibGLib.idle_add(
      LibGLib::PRIORITY_DEFAULT_IDLE,
      LibGLib::SourceFunc.new(trampoline.pointer, Pointer(Void).null),
      GObject::ClosureDataManager.register(trampoline.closure_data),
      ->GObject::ClosureDataManager.deregister
    )
  end

  def self.timeout(seconds, &block : -> Bool)
    trampoline = LibGLib::SourceFunc.new { block.call ? 1 : 0 }
    LibGLib.timeout_add_seconds(
      LibGLib::PRIORITY_DEFAULT_IDLE,
      UInt32.new(seconds),
      LibGLib::SourceFunc.new(trampoline.pointer, Pointer(Void).null),
      GObject::ClosureDataManager.register(trampoline.closure_data),
      ->GObject::ClosureDataManager.deregister
    )
  end
end
