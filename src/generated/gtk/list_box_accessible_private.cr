module Gtk
  class ListBoxAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_list_box_accessible_private)
    end

    def to_unsafe
      @gtk_list_box_accessible_private.not_nil!
    end

  end
end

