module Gio
  class FileAttributeInfoList
    include GObject::WrappedType

    def self.new(infos : Gio::FileAttributeInfo|Nil = nil, n_infos : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGio::FileAttributeInfoList*)).tap do |object|
        object.infos = infos unless infos.nil?
        object.n_infos = n_infos unless n_infos.nil?
      end
    end

    @gio_file_attribute_info_list : LibGio::FileAttributeInfoList*?
    def initialize(@gio_file_attribute_info_list : LibGio::FileAttributeInfoList*)
    end

    def to_unsafe
      @gio_file_attribute_info_list.not_nil!
    end

    def self.new : self
      __return_value = LibGio.file_attribute_info_list_new
      cast Gio::FileAttributeInfoList.new(__return_value)
    end

    def add(name, type : Gio::FileAttributeType, flags : Gio::FileAttributeInfoFlags)
      LibGio.file_attribute_info_list_add(to_unsafe.as(LibGio::FileAttributeInfoList*), name.to_unsafe, type, flags)
      nil
    end

    def dup
      __return_value = LibGio.file_attribute_info_list_dup(to_unsafe.as(LibGio::FileAttributeInfoList*))
      Gio::FileAttributeInfoList.new(__return_value)
    end

    def lookup(name)
      __return_value = LibGio.file_attribute_info_list_lookup(to_unsafe.as(LibGio::FileAttributeInfoList*), name.to_unsafe)
      Gio::FileAttributeInfo.new(__return_value)
    end

    def ref
      __return_value = LibGio.file_attribute_info_list_ref(to_unsafe.as(LibGio::FileAttributeInfoList*))
      Gio::FileAttributeInfoList.new(__return_value)
    end

    def unref
      LibGio.file_attribute_info_list_unref(to_unsafe.as(LibGio::FileAttributeInfoList*))
      nil
    end

    def infos
      Gio::FileAttributeInfo.new((to_unsafe.as(LibGio::FileAttributeInfoList*).value.infos))
    end

    def infos=(value : Gio::FileAttributeInfo)
      to_unsafe.as(LibGio::FileAttributeInfoList*).value.infos = value.to_unsafe.as(LibGio::FileAttributeInfo*)
    end

    def n_infos
      (to_unsafe.as(LibGio::FileAttributeInfoList*).value.n_infos)
    end

    def n_infos=(value : Int32)
      to_unsafe.as(LibGio::FileAttributeInfoList*).value.n_infos = Int32.new(value)
    end

  end
end

