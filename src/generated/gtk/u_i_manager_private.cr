module Gtk
  class UIManagerPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::UIManagerPrivate*))
    end

    @gtk_u_i_manager_private : LibGtk::UIManagerPrivate*?
    def initialize(@gtk_u_i_manager_private : LibGtk::UIManagerPrivate*)
    end

    def to_unsafe
      @gtk_u_i_manager_private.not_nil!.as(Void*)
    end

  end
end

