module Gtk
  class AlignmentPrivate
    include GObject::WrappedType

    @gtk_alignment_private : LibGtk::AlignmentPrivate*?
    def initialize(@gtk_alignment_private : LibGtk::AlignmentPrivate*)
    end

    def to_unsafe
      @gtk_alignment_private.not_nil!
    end

  end
end

