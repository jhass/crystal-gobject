module Gtk
  class Requisition
    include GObject::WrappedType

    def self.new(width : Int32|Nil = nil, height : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(8, 0u8)
      new(ptr.as(LibGtk::Requisition*)).tap do |object|
        object.width = width unless width.nil?
        object.height = height unless height.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::Requisition*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Requisition*)
    end

    def self.new : self
      __return_value = LibGtk.requisition_new
      cast Gtk::Requisition.new(__return_value)
    end

    def copy
      __return_value = LibGtk.requisition_copy(@pointer.as(LibGtk::Requisition*))
      Gtk::Requisition.new(__return_value)
    end

    def free
      LibGtk.requisition_free(@pointer.as(LibGtk::Requisition*))
      nil
    end

    def width
      (to_unsafe.as(LibGtk::Requisition*).value.width)
    end

    def width=(value : Int32)
      to_unsafe.as(LibGtk::Requisition*).value.width = Int32.new(value)
    end

    def height
      (to_unsafe.as(LibGtk::Requisition*).value.height)
    end

    def height=(value : Int32)
      to_unsafe.as(LibGtk::Requisition*).value.height = Int32.new(value)
    end

  end
end

