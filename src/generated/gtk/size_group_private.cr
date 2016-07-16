module Gtk
  class SizeGroupPrivate
    include GObject::WrappedType

    @gtk_size_group_private : LibGtk::SizeGroupPrivate*?
    def initialize(@gtk_size_group_private : LibGtk::SizeGroupPrivate*)
    end

    def to_unsafe
      @gtk_size_group_private.not_nil!.as(Void*)
    end

  end
end

