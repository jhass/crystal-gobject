require "../helper"

lib LibGObject
  fun signal_connect_data = g_signal_connect_data(instance : LibGObject::Object*, detailed_signal : UInt8*, c_handler : Callback, data : Void*, destroy_data : ClosureNotify, flags : ConnectFlags) : UInt64
end

module GObject
  class Object
    def connect(signal, &callback)
      connect signal, callback
    end

    def connect(signal, callback)
      LibGObject.signal_connect_data(@pointer.as(LibGObject::Object*),
                                     signal,
                                     LibGObject::Callback.new(callback.pointer, Pointer(Void).null),
                                     ClosureDataManager.register(callback.closure_data),
                                     ->ClosureDataManager.deregister,
                                     LibGObject::ConnectFlags::SWAPPED).tap do |handler_id|
        if handler_id == 0
          raise ArgumentError.new("Couldn't connect signal #{signal} to #{type_name} (#{self.class})")
        end
      end
    end

    def disconnect(id : UInt64)
      GObject.signal_handler_disconnect self, id
    end

    def disconnect(signal : String)
      # TODO: figure out why signal_handler_disconnect_matched just doesn't work
      loop do
        handler_id = first_handler_for signal
        break if handler_id == 0
        disconnect handler_id
      end
    end

    private def first_handler_for(signal)
      GObject.signal_handler_find self,
                                  SignalMatchType::ID,
                                  signal_lookup(signal),
                                  0,
                                  nil,
                                  nil,
                                  nil
    end

    # TODO: should perhaps become object.type.signal_lookup ?
    def signal_lookup(name)
      GObject.signal_lookup(name, type).tap do |signal|
        raise ArgumentError.new "Unknown signal #{name} for #{type_name} (#{self.class})" if signal == 0
      end
    end

    # TODO: should perhaps become object.type.id ?
    def type
      to_unsafe.as(LibGObject::Object*).value.g_type_instance.g_class.value.g_type
    end

    # TODO: should perhaps become object.type.name ?
    def type_name
      GObject.type_name(type)
    end

    macro property_getter(name, type)
      def {{name.id.split("-").join("_").id}}
        value = {{type.id}}.new_gvalue
        LibGObject.object_get_property(self.to_unsafe.as(LibGObject::Object*), "{{name.id}}", value)
        {{type.id}}.from_gvalue value
      end
    end

    macro property_setter(name, type)
      def {{name.id.split("-").join("_").id}}=(value : {{type.id}})
        LibGObject.object_set_property self.to_unsafe.as(LibGObject::Object*), "{{name.id}}", value.to_gvalue
      end
     end

    macro property_property(name, type)
      property_getter {{name}}, {{type}}
      property_setter {{name}}, {{type}}
    end
  end
end
