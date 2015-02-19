lib LibGObject
  fun signal_connect_data = g_signal_connect_data(instance : LibGObject::Object*, detailed_signal : UInt8*, c_handler : Callback, data : Void*, destroy_data : ClosureNotify, flags : ConnectFlags) : UInt64
end

module GObject
  class Object
    def connect signal, &callback
      LibGObject.signal_connect_data (to_unsafe as LibGObject::Object*), signal, LibGObject::Callback.new(callback.pointer, Pointer(Void).null), callback.closure_data, nil, LibGObject::ConnectFlags::SWAPPED
    end
  end
end
