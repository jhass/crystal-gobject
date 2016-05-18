module Gio
  class FileIcon < GObject::Object
    @gio_file_icon : LibGio::FileIcon*?
    def initialize(@gio_file_icon : LibGio::FileIcon*)
    end

    def to_unsafe
      @gio_file_icon.not_nil!
    end

    # Implements Icon
    # Implements LoadableIcon

    def self.new(file) : self
      __return_value = LibGio.file_icon_new(file.to_unsafe.as(LibGio::File*))
      cast Gio::FileIcon.new(__return_value)
    end

    def file
      __return_value = LibGio.file_icon_get_file(to_unsafe.as(LibGio::FileIcon*))
      __return_value
    end

  end
end

