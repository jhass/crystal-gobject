module Gtk
  class TextBTree
    include GObject::WrappedType

    @gtk_text_b_tree : LibGtk::TextBTree*?
    def initialize(@gtk_text_b_tree : LibGtk::TextBTree*)
    end

    def to_unsafe
      @gtk_text_b_tree.not_nil!
    end

  end
end

