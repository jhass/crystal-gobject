module Gtk
  class TextChildAnchor < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::TextChildAnchor*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TextChildAnchor*)
    end

    def self.new : self
      __return_value = LibGtk.text_child_anchor_new
      cast Gtk::TextChildAnchor.new(__return_value)
    end

    def deleted
      __return_value = LibGtk.text_child_anchor_get_deleted(@pointer.as(LibGtk::TextChildAnchor*))
      __return_value
    end

    def widgets
      __return_value = LibGtk.text_child_anchor_get_widgets(@pointer.as(LibGtk::TextChildAnchor*))
      GLib::ListIterator(Gtk::Widget, LibGtk::Widget*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

  end
end

