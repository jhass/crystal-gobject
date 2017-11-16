module Gtk
  class LevelBarPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::LevelBarPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::LevelBarPrivate*)
    end

  end
end

