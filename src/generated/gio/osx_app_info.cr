module Gio
  class OsxAppInfo < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::OsxAppInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::OsxAppInfo*)
    end

    # Implements AppInfo
    def filename
      __return_value = LibGio.osx_app_info_get_filename(@pointer.as(LibGio::OsxAppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

