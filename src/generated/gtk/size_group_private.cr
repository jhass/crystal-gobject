module Gtk
  class SizeGroupPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::SizeGroupPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SizeGroupPrivate*)
    end

  end
end

