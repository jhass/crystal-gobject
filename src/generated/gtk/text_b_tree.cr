module Gtk
  class TextBTree
    include GObject::WrappedType

    def initialize(@gtk_text_b_tree)
    end

    def to_unsafe
      @gtk_text_b_tree.not_nil!
    end

  end
end

