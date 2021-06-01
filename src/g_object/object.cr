require "../closure_data_manager"

lib LibGObject
  fun new_with_properties = g_object_new_with_properties(object_type : UInt64, n_properties : UInt32, names : UInt8**, values : Value*) : Object*
  fun signal_connect_data = g_signal_connect_data(instance : LibGObject::Object*, detailed_signal : UInt8*, c_handler : Callback, data : Void*, destroy_data : ClosureNotify, flags : ConnectFlags) : UInt64
end

module GObject
  class Object
    def connect(signal, *, after = false, &callback)
      connect signal, callback, after: after
    end

    def connect(signal, callback, *, after = false)
      flags = GObject::ConnectFlags::SWAPPED
      flags |= GObject::ConnectFlags::AFTER if after
      LibGObject.signal_connect_data(@pointer.as(LibGObject::Object*),
        signal,
        LibGObject::Callback.new(callback.pointer, Pointer(Void).null),
        ClosureDataManager.register(callback.closure_data),
        ->ClosureDataManager.deregister,
        flags).tap do |handler_id|
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
      GObject.signal_lookup(name, gtype).tap do |signal|
        raise ArgumentError.new "Unknown signal #{name} for #{type_name} (#{self.class})" if signal == 0
      end
    end

    def get_property(name : String, gtype : T.class) forall T
      value = GObject::Value.new(type: T::GTYPE)
      LibGObject.object_get_property(to_unsafe_gobject_object, name, value)
      T.new(value.object.to_unsafe.as(typeof(T.allocate.to_unsafe)))
    end

    # TODO: should perhaps become object.type.id ?
    def gtype?
      if @pointer
        @pointer.as(LibGObject::Object*).value.g_type_instance.g_class.value.g_type
      else
        nil
      end
    end

    def gtype
      gtype? || raise ArgumentError.new("No gtype for #{inspect}")
    end

    # TODO: should perhaps become object.type.name ?
    def type_name
      @pointer.null? ? "null pointer" : (gtype = gtype?) ? GObject.type_name(gtype) : "Unknown"
    end

    def inspect(io)
      gtype = gtype?
      io << "GObject(#{type_name}#{":#{gtype.to_s(16)}" if gtype}:0x#{@pointer.address.to_s(16)})"
    end
  end
end
