module Gtk
  class AlignmentPrivate
    include GObject::WrappedType

    def initialize(@gtk_alignment_private)
    end

    def to_unsafe
      @gtk_alignment_private.not_nil!
    end

  end
end

