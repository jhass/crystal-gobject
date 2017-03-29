module Gtk
  class LabelSelectionInfo
    include GObject::WrappedType

    @gtk_label_selection_info : LibGtk::LabelSelectionInfo*?
    def initialize(@gtk_label_selection_info : LibGtk::LabelSelectionInfo*)
    end

    def to_unsafe
      @gtk_label_selection_info.not_nil!
    end

  end
end

