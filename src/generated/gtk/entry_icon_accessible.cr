module Gtk
  class EntryIconAccessible < Atk::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::EntryIconAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::EntryIconAccessible*)
    end

    # Implements Action
    # Implements Component
  end
end

