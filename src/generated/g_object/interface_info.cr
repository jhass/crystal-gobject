module GObject
  class InterfaceInfo
    include GObject::WrappedType

    def initialize(@g_object_interface_info)
    end

    def to_unsafe
      @g_object_interface_info.not_nil!
    end

  end
end

