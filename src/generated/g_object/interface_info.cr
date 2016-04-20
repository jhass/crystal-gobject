module GObject
  class InterfaceInfo
    include GObject::WrappedType

    @g_object_interface_info : LibGObject::InterfaceInfo*?
    def initialize(@g_object_interface_info : LibGObject::InterfaceInfo*)
    end

    def to_unsafe
      @g_object_interface_info.not_nil!
    end

  end
end

