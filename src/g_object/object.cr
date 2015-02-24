require "../helper"

lib LibGObject
  fun signal_connect_data = g_signal_connect_data(instance : LibGObject::Object*, detailed_signal : UInt8*, c_handler : Callback, data : Void*, destroy_data : ClosureNotify, flags : ConnectFlags) : UInt64
end

module GObject
  class Object
    def connect signal, &callback
      LibGObject.signal_connect_data (to_unsafe as LibGObject::Object*),
                                     signal,
                                     LibGObject::Callback.new(callback.pointer, Pointer(Void).null),
                                     ClosureDataManager.register(callback.closure_data),
                                     ->ClosureDataManager.deregister,
                                     LibGObject::ConnectFlags::SWAPPED
    end


    macro property_getter name, type
      def {{name.id.split("-").join("_").id}}
        value = {{type.id}}.new_gvalue
        LibGObject.object_get_property(self.to_unsafe as LibGObject::Object*, "{{name.id}}", value)
        {{type.id}}.from_gvalue value
      end
    end

    macro property_setter name, type
      def {{name.id.split("-").join("_").id}}= value : {{type.id}}
        LibGObject.object_set_property self.to_unsafe as LibGObject::Object*, "{{name.id}}", value.to_gvalue
      end
     end

    macro property_property name, type
      property_getter {{name}}, {{type}}
      property_setter {{name}}, {{type}}
    end
  end
end
