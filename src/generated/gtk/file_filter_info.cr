module Gtk
  class FileFilterInfo
    include GObject::WrappedType

    def initialize(@gtk_file_filter_info)
    end

    def to_unsafe
      @gtk_file_filter_info.not_nil!
    end

  end
end

