module Gtk
  class SeparatorToolItemPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::SeparatorToolItemPrivate*))
    end

    @gtk_separator_tool_item_private : LibGtk::SeparatorToolItemPrivate*?
    def initialize(@gtk_separator_tool_item_private : LibGtk::SeparatorToolItemPrivate*)
    end

    def to_unsafe
      @gtk_separator_tool_item_private.not_nil!.as(Void*)
    end

  end
end

