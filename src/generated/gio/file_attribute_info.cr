module Gio
  class FileAttributeInfo
    include GObject::WrappedType

    def initialize(@gio_file_attribute_info)
    end

    def to_unsafe
      @gio_file_attribute_info.not_nil!
    end

  end
end

