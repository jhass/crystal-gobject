require "../helper"

lib LibGObject
  fun new_with_properties = g_object_new_with_properties(object_type : UInt64, n_properties : UInt32, names : UInt8**, values : Value*) : Object*
  fun signal_connect_data = g_signal_connect_data(instance : LibGObject::Object*, detailed_signal : UInt8*, c_handler : Callback, data : Void*, destroy_data : ClosureNotify, flags : ConnectFlags) : UInt64
end

module GObject
  def self.type_from_name(name)
    gtype = previous_def
    abort "No GType for #{name} found\n#{caller.join("\n")}" if gtype == 0
    gtype
  end

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
        GObject::ConnectFlags::SWAPPED).tap do |handler_id|
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

    # TODO: should perhaps become object.type.id ?
    def gtype
      @pointer.as(LibGObject::Object*).value.g_type_instance.g_class.value.g_type
    end

    # TODO: should perhaps become object.type.name ?
    def type_name
      GObject.type_name(gtype)
    end

    def inspect(io)
      io << "GObject(#{type_name}:#{gtype.to_s(16)}:0x#{@pointer.address.to_s(16)})"
    end
  end
end
