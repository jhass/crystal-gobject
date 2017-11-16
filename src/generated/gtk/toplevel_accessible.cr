module Gtk
  class ToplevelAccessible < Atk::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::ToplevelAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ToplevelAccessible*)
    end

    def children
      __return_value = LibGtk.toplevel_accessible_get_children(@pointer.as(LibGtk::ToplevelAccessible*))
      GLib::ListIterator(Gtk::Window, LibGtk::Window**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

  end
end

