module Gtk
  class SizeGroupPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::SizeGroupPrivate*))
    end

    @gtk_size_group_private : LibGtk::SizeGroupPrivate*?
    def initialize(@gtk_size_group_private : LibGtk::SizeGroupPrivate*)
    end

    def to_unsafe
      @gtk_size_group_private.not_nil!.as(Void*)
    end

  end
end

