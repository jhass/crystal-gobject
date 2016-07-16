module Gtk
  class UIManagerPrivate
    include GObject::WrappedType

    @gtk_u_i_manager_private : LibGtk::UIManagerPrivate*?
    def initialize(@gtk_u_i_manager_private : LibGtk::UIManagerPrivate*)
    end

    def to_unsafe
      @gtk_u_i_manager_private.not_nil!.as(Void*)
    end

  end
end

