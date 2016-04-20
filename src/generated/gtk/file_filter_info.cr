module Gtk
  class FileFilterInfo
    include GObject::WrappedType

    @gtk_file_filter_info : LibGtk::FileFilterInfo*?
    def initialize(@gtk_file_filter_info : LibGtk::FileFilterInfo*)
    end

    def to_unsafe
      @gtk_file_filter_info.not_nil!
    end

  end
end

