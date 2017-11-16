module Gtk
  class ThemingEnginePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ThemingEnginePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ThemingEnginePrivate*)
    end

  end
end

