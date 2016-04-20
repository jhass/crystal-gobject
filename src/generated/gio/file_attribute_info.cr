module Gio
  class FileAttributeInfo
    include GObject::WrappedType

    @gio_file_attribute_info : LibGio::FileAttributeInfo*?
    def initialize(@gio_file_attribute_info : LibGio::FileAttributeInfo*)
    end

    def to_unsafe
      @gio_file_attribute_info.not_nil!
    end

  end
end

