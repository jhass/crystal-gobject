module Gtk
  class RequestedSize
    include GObject::WrappedType

    def self.new(data : Void*|Nil = nil, minimum_size : Int32|Nil = nil, natural_size : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGtk::RequestedSize*)).tap do |object|
        object.data = data unless data.nil?
        object.minimum_size = minimum_size unless minimum_size.nil?
        object.natural_size = natural_size unless natural_size.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::RequestedSize*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RequestedSize*)
    end

    def data
      (to_unsafe.as(LibGtk::RequestedSize*).value.data)
    end

    def data=(value : Void*)
      to_unsafe.as(LibGtk::RequestedSize*).value.data = value
    end

    def minimum_size
      (to_unsafe.as(LibGtk::RequestedSize*).value.minimum_size)
    end

    def minimum_size=(value : Int32)
      to_unsafe.as(LibGtk::RequestedSize*).value.minimum_size = Int32.new(value)
    end

    def natural_size
      (to_unsafe.as(LibGtk::RequestedSize*).value.natural_size)
    end

    def natural_size=(value : Int32)
      to_unsafe.as(LibGtk::RequestedSize*).value.natural_size = Int32.new(value)
    end

  end
end

