module Gtk
  class TextChildAnchor < GObject::Object
    @gtk_text_child_anchor : LibGtk::TextChildAnchor*?
    def initialize(@gtk_text_child_anchor : LibGtk::TextChildAnchor*)
    end

    def to_unsafe
      @gtk_text_child_anchor.not_nil!
    end

    def self.new : self
      __return_value = LibGtk.text_child_anchor_new
      cast Gtk::TextChildAnchor.new(__return_value)
    end

    def deleted
      __return_value = LibGtk.text_child_anchor_get_deleted(to_unsafe.as(LibGtk::TextChildAnchor*))
      __return_value
    end

    def widgets
      __return_value = LibGtk.text_child_anchor_get_widgets(to_unsafe.as(LibGtk::TextChildAnchor*))
      __return_value
    end

  end
end

