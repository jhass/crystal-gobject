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

    @gtk_requisition : LibGtk::Requisition*?
    def initialize(@gtk_requisition : LibGtk::Requisition*)
    end

    def to_unsafe
      @gtk_requisition.not_nil!.as(Void*)
    end

    def self.new : self
      __return_value = LibGtk.requisition_new
      cast Gtk::Requisition.new(__return_value)
    end

    def copy
      __return_value = LibGtk.requisition_copy(to_unsafe.as(LibGtk::Requisition*))
      Gtk::Requisition.new(__return_value)
    end

    def free
      __return_value = LibGtk.requisition_free(to_unsafe.as(LibGtk::Requisition*))
      __return_value
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

