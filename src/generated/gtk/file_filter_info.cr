module Gtk
  class FileFilterInfo
    include GObject::WrappedType

    def self.new(contains : Gtk::FileFilterFlags|Nil = nil, filename : String|Nil = nil, uri : String|Nil = nil, display_name : String|Nil = nil, mime_type : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibGtk::FileFilterInfo*)).tap do |object|
        object.contains = contains unless contains.nil?
        object.filename = filename unless filename.nil?
        object.uri = uri unless uri.nil?
        object.display_name = display_name unless display_name.nil?
        object.mime_type = mime_type unless mime_type.nil?
      end
    end

    @gtk_file_filter_info : LibGtk::FileFilterInfo*?
    def initialize(@gtk_file_filter_info : LibGtk::FileFilterInfo*)
    end

    def to_unsafe
      @gtk_file_filter_info.not_nil!.as(Void*)
    end

    def contains
      (to_unsafe.as(LibGtk::FileFilterInfo*).value.contains)
    end

    def contains=(value : Gtk::FileFilterFlags)
      to_unsafe.as(LibGtk::FileFilterInfo*).value.contains = value
    end

    def filename
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::FileFilterInfo*).value.filename); ::String.new((to_unsafe.as(LibGtk::FileFilterInfo*).value.filename)))
    end

    def filename=(value : String)
      to_unsafe.as(LibGtk::FileFilterInfo*).value.filename = value.to_unsafe
    end

    def uri
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::FileFilterInfo*).value.uri); ::String.new((to_unsafe.as(LibGtk::FileFilterInfo*).value.uri)))
    end

    def uri=(value : String)
      to_unsafe.as(LibGtk::FileFilterInfo*).value.uri = value.to_unsafe
    end

    def display_name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::FileFilterInfo*).value.display_name); ::String.new((to_unsafe.as(LibGtk::FileFilterInfo*).value.display_name)))
    end

    def display_name=(value : String)
      to_unsafe.as(LibGtk::FileFilterInfo*).value.display_name = value.to_unsafe
    end

    def mime_type
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::FileFilterInfo*).value.mime_type); ::String.new((to_unsafe.as(LibGtk::FileFilterInfo*).value.mime_type)))
    end

    def mime_type=(value : String)
      to_unsafe.as(LibGtk::FileFilterInfo*).value.mime_type = value.to_unsafe
    end

  end
end

