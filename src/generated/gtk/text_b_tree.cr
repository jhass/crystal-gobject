module Gtk
  class TextBTree
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::TextBTree*))
    end

    @gtk_text_b_tree : LibGtk::TextBTree*?
    def initialize(@gtk_text_b_tree : LibGtk::TextBTree*)
    end

    def to_unsafe
      @gtk_text_b_tree.not_nil!.as(Void*)
    end

  end
end

