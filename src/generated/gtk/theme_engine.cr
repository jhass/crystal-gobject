module Gtk
  class ThemeEngine
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ThemeEngine*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ThemeEngine*)
    end

  end
end

