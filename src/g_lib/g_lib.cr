require "time"

require "../gobject"
require_gobject "GLib"

require "./*"
require "../closure_data_manager"

module GLib
  enum Priority
    Default      = LibGLib::PRIORITY_DEFAULT
    Default_Idle = LibGLib::PRIORITY_DEFAULT_IDLE
    High         = LibGLib::PRIORITY_HIGH
    High_Idle    = LibGLib::PRIORITY_HIGH_IDLE
    Low          = LibGLib::PRIORITY_LOW
  end

  def self.idle_add(priority : Priority = Priority::Default, &block : -> Bool)
    trampoline = LibGLib::SourceFunc.new { block.call ? 1 : 0 }
    LibGLib.idle_add(
      priority,
      LibGLib::SourceFunc.new(trampoline.pointer, Pointer(Void).null),
      GObject::ClosureDataManager.register(trampoline.closure_data),
      ->GObject::ClosureDataManager.deregister
    )
  end

  # Calls *&block* every *interval* seconds until *&block* returns false.
  # Can also be called implicitly with `#timeout`.
  def self.timeout_seconds(interval : UInt32, priority : Priority = Priority::Default, &block : -> Bool)
    raise ArgumentError.new("Timeout must be at least 1 second") unless interval > 0
    trampoline = LibGLib::SourceFunc.new { block.call ? 1 : 0 }
    sourcefunc = LibGLib::SourceFunc.new(trampoline.pointer, Pointer(Void).null)
    closure = GObject::ClosureDataManager.register(trampoline.closure_data)
    LibGLib.timeout_add_seconds(
      priority,
      interval,
      sourcefunc,
      closure,
      ->GObject::ClosureDataManager.deregister
    )
  end

  # Calls *&block* every *interval* milliseconds until *&block* returns false.
  # Can also be called implicitly with `#timeout`.
  def self.timeout_milliseconds(interval : UInt32, priority : Priority = Priority::Default, &block : -> Bool)
    raise ArgumentError.new("Timeout must be at least 1 millisecond") unless interval > 0
    trampoline = LibGLib::SourceFunc.new { block.call ? 1 : 0 }
    sourcefunc = LibGLib::SourceFunc.new(trampoline.pointer, Pointer(Void).null)
    closure = GObject::ClosureDataManager.register(trampoline.closure_data)
    LibGLib.timeout_add(
      priority,
      interval,
      sourcefunc,
      closure,
      ->GObject::ClosureDataManager.deregister
    )
  end

  # Calls *&block* every *interval* until *&block* returns false.
  # If milliseconds are not specified or the interval is bigger than `UInt32::Max` milliseconds, `#timeout_seconds` is called, else `#timeout_milliseconds` is called.
  def self.timeout(interval : Time::Span, priority : Priority = Priority::Default, &block : -> Bool)
    if interval.to_i == interval.total_seconds || interval.total_milliseconds > UInt32::MAX
      self.timeout_seconds(interval.total_seconds.to_u32, priority, &block)
    else
      self.timeout_milliseconds(interval.total_milliseconds.to_u32, priority, &block)
    end
  end
end
