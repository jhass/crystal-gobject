module Gtk
  class UIManagerPrivate
    include GObject::WrappedType

    def initialize(@gtk_u_i_manager_private)
    end

    def to_unsafe
      @gtk_u_i_manager_private.not_nil!
    end

  end
end

