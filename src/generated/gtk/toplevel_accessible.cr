module Gtk
  class ToplevelAccessible < Atk::Object
    @gtk_toplevel_accessible : LibGtk::ToplevelAccessible*?
    def initialize(@gtk_toplevel_accessible : LibGtk::ToplevelAccessible*)
    end

    def to_unsafe
      @gtk_toplevel_accessible.not_nil!.as(Void*)
    end

    def children
      __return_value = LibGtk.toplevel_accessible_get_children(to_unsafe.as(LibGtk::ToplevelAccessible*))
      GLib::ListIterator(Gtk::Window, LibGtk::Window*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

  end
end

