module Gtk
  class SizeGroupPrivate
    include GObject::WrappedType

    def initialize(@gtk_size_group_private)
    end

    def to_unsafe
      @gtk_size_group_private.not_nil!
    end

  end
end

