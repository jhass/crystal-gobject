require "../gobject"
require_gobject "GLib"

require "./*"
require "../closure_data_manager"

module GLib
  def self.idle_add(&block : -> Bool)
    LibGLib.idle_add(
      LibGLib::PRIORITY_DEFAULT_IDLE,
      LibGLib::SourceFunc.new(block.pointer, Pointer(Void).null),
      GObject::ClosureDataManager.register(block.closure_data),
      ->GObject::ClosureDataManager.deregister
    )
  end

  def self.timeout(seconds, &block : -> Bool)
    LibGLib.timeout_add_seconds(
      LibGLib::PRIORITY_DEFAULT_IDLE,
      UInt32.new(seconds),
      LibGLib::SourceFunc.new(block.pointer, Pointer(Void).null),
      GObject::ClosureDataManager.register(block.closure_data),
      ->GObject::ClosureDataManager.deregister
    )
  end
end
