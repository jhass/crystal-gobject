module Gtk
  class RcContext
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::RcContext*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RcContext*)
    end

  end
end

