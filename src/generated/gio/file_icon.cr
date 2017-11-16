module Gio
  class FileIcon < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::FileIcon*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::FileIcon*)
    end

    # Implements Icon
    # Implements LoadableIcon
    def file
      __return_value = LibGio.file_icon_get_file(to_unsafe.as(LibGio::FileIcon*))
      __return_value
    end

    def self.new(file) : self
      __return_value = LibGio.file_icon_new(file.to_unsafe.as(LibGio::File*))
      cast Gio::FileIcon.new(__return_value)
    end

    def file
      __return_value = LibGio.file_icon_get_file(@pointer.as(LibGio::FileIcon*))
      __return_value
    end

  end
end

