module Gtk
  class LabelSelectionInfo
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::LabelSelectionInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::LabelSelectionInfo*)
    end

  end
end

