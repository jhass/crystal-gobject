module Gtk
  class TextChildAnchor < GObject::Object
    def initialize(@gtk_text_child_anchor)
    end

    def to_unsafe
      @gtk_text_child_anchor.not_nil!
    end

    def self.new_internal
      __return_value = LibGtk.text_child_anchor_new
      Gtk::TextChildAnchor.new(__return_value)
    end

    def deleted
      __return_value = LibGtk.text_child_anchor_get_deleted((to_unsafe as LibGtk::TextChildAnchor*))
      __return_value
    end

    def widgets
      __return_value = LibGtk.text_child_anchor_get_widgets((to_unsafe as LibGtk::TextChildAnchor*))
      __return_value
    end

  end
end

