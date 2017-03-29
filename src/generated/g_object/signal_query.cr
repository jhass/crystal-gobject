module GObject
  class SignalQuery
    include GObject::WrappedType

    def self.new(signal_id : UInt32|Nil = nil, signal_name : String|Nil = nil, itype : UInt64|Nil = nil, signal_flags : GObject::SignalFlags|Nil = nil, return_type : UInt64|Nil = nil, n_params : UInt32|Nil = nil, param_types : Array(UInt64)|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(56, 0u8)
      new(ptr.as(LibGObject::SignalQuery*)).tap do |object|
        object.signal_id = signal_id unless signal_id.nil?
        object.signal_name = signal_name unless signal_name.nil?
        object.itype = itype unless itype.nil?
        object.signal_flags = signal_flags unless signal_flags.nil?
        object.return_type = return_type unless return_type.nil?
        object.n_params = n_params unless n_params.nil?
        object.param_types = param_types unless param_types.nil?
      end
    end

    @g_object_signal_query : LibGObject::SignalQuery*?
    def initialize(@g_object_signal_query : LibGObject::SignalQuery*)
    end

    def to_unsafe
      @g_object_signal_query.not_nil!
    end

    def signal_id
      (to_unsafe.as(LibGObject::SignalQuery*).value.signal_id)
    end

    def signal_id=(value : UInt32)
      to_unsafe.as(LibGObject::SignalQuery*).value.signal_id = UInt32.new(value)
    end

    def signal_name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGObject::SignalQuery*).value.signal_name); ::String.new((to_unsafe.as(LibGObject::SignalQuery*).value.signal_name)))
    end

    def signal_name=(value : String)
      to_unsafe.as(LibGObject::SignalQuery*).value.signal_name = value
    end

    def itype
      (to_unsafe.as(LibGObject::SignalQuery*).value.itype)
    end

    def itype=(value : UInt64)
      to_unsafe.as(LibGObject::SignalQuery*).value.itype = UInt64.new(value)
    end

    def signal_flags
      (to_unsafe.as(LibGObject::SignalQuery*).value.signal_flags)
    end

    def signal_flags=(value : GObject::SignalFlags)
      to_unsafe.as(LibGObject::SignalQuery*).value.signal_flags = value
    end

    def return_type
      (to_unsafe.as(LibGObject::SignalQuery*).value.return_type)
    end

    def return_type=(value : UInt64)
      to_unsafe.as(LibGObject::SignalQuery*).value.return_type = UInt64.new(value)
    end

    def n_params
      (to_unsafe.as(LibGObject::SignalQuery*).value.n_params)
    end

    def n_params=(value : UInt32)
      to_unsafe.as(LibGObject::SignalQuery*).value.n_params = UInt32.new(value)
    end

    def param_types
      PointerIterator.new((to_unsafe.as(LibGObject::SignalQuery*).value.param_types)) {|__item| __item }
    end

    def param_types=(value : Array(UInt64))
      to_unsafe.as(LibGObject::SignalQuery*).value.param_types = value
    end

  end
end

