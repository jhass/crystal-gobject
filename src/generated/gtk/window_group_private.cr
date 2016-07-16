module Gtk
  class WindowGroupPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::WindowGroupPrivate*))
    end

    @gtk_window_group_private : LibGtk::WindowGroupPrivate*?
    def initialize(@gtk_window_group_private : LibGtk::WindowGroupPrivate*)
    end

    def to_unsafe
      @gtk_window_group_private.not_nil!
    end

  end
end

