module Gtk
  class LabelSelectionInfo
    include GObject::WrappedType

    def initialize(@gtk_label_selection_info)
    end

    def to_unsafe
      @gtk_label_selection_info.not_nil!
    end

  end
end

