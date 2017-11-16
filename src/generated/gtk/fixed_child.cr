module Gtk
  class FixedChild
    include GObject::WrappedType

    def self.new(widget : Gtk::Widget|Nil = nil, x : Int32|Nil = nil, y : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGtk::FixedChild*)).tap do |object|
        object.widget = widget unless widget.nil?
        object.x = x unless x.nil?
        object.y = y unless y.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::FixedChild*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FixedChild*)
    end

    def widget
      Gtk::Widget.new((to_unsafe.as(LibGtk::FixedChild*).value.widget))
    end

    def widget=(value : Gtk::Widget)
      to_unsafe.as(LibGtk::FixedChild*).value.widget = value.to_unsafe.as(LibGtk::Widget*)
    end

    def x
      (to_unsafe.as(LibGtk::FixedChild*).value.x)
    end

    def x=(value : Int32)
      to_unsafe.as(LibGtk::FixedChild*).value.x = Int32.new(value)
    end

    def y
      (to_unsafe.as(LibGtk::FixedChild*).value.y)
    end

    def y=(value : Int32)
      to_unsafe.as(LibGtk::FixedChild*).value.y = Int32.new(value)
    end

  end
end

