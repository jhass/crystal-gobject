module Gtk
  class LabelSelectionInfo
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::LabelSelectionInfo*))
    end

    @gtk_label_selection_info : LibGtk::LabelSelectionInfo*?
    def initialize(@gtk_label_selection_info : LibGtk::LabelSelectionInfo*)
    end

    def to_unsafe
      @gtk_label_selection_info.not_nil!.as(Void*)
    end

  end
end

