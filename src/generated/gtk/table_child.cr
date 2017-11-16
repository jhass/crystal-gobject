module Gtk
  class TableChild
    include GObject::WrappedType

    def self.new(widget : Gtk::Widget|Nil = nil, left_attach : UInt16|Nil = nil, right_attach : UInt16|Nil = nil, top_attach : UInt16|Nil = nil, bottom_attach : UInt16|Nil = nil, xpadding : UInt16|Nil = nil, ypadding : UInt16|Nil = nil, xexpand : UInt32|Nil = nil, yexpand : UInt32|Nil = nil, xshrink : UInt32|Nil = nil, yshrink : UInt32|Nil = nil, xfill : UInt32|Nil = nil, yfill : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      new(ptr.as(LibGtk::TableChild*)).tap do |object|
        object.widget = widget unless widget.nil?
        object.left_attach = left_attach unless left_attach.nil?
        object.right_attach = right_attach unless right_attach.nil?
        object.top_attach = top_attach unless top_attach.nil?
        object.bottom_attach = bottom_attach unless bottom_attach.nil?
        object.xpadding = xpadding unless xpadding.nil?
        object.ypadding = ypadding unless ypadding.nil?
        object.xexpand = xexpand unless xexpand.nil?
        object.yexpand = yexpand unless yexpand.nil?
        object.xshrink = xshrink unless xshrink.nil?
        object.yshrink = yshrink unless yshrink.nil?
        object.xfill = xfill unless xfill.nil?
        object.yfill = yfill unless yfill.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::TableChild*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TableChild*)
    end

    def widget
      Gtk::Widget.new((to_unsafe.as(LibGtk::TableChild*).value.widget))
    end

    def widget=(value : Gtk::Widget)
      to_unsafe.as(LibGtk::TableChild*).value.widget = value.to_unsafe.as(LibGtk::Widget*)
    end

    def left_attach
      (to_unsafe.as(LibGtk::TableChild*).value.left_attach)
    end

    def left_attach=(value : UInt16)
      to_unsafe.as(LibGtk::TableChild*).value.left_attach = UInt16.new(value)
    end

    def right_attach
      (to_unsafe.as(LibGtk::TableChild*).value.right_attach)
    end

    def right_attach=(value : UInt16)
      to_unsafe.as(LibGtk::TableChild*).value.right_attach = UInt16.new(value)
    end

    def top_attach
      (to_unsafe.as(LibGtk::TableChild*).value.top_attach)
    end

    def top_attach=(value : UInt16)
      to_unsafe.as(LibGtk::TableChild*).value.top_attach = UInt16.new(value)
    end

    def bottom_attach
      (to_unsafe.as(LibGtk::TableChild*).value.bottom_attach)
    end

    def bottom_attach=(value : UInt16)
      to_unsafe.as(LibGtk::TableChild*).value.bottom_attach = UInt16.new(value)
    end

    def xpadding
      (to_unsafe.as(LibGtk::TableChild*).value.xpadding)
    end

    def xpadding=(value : UInt16)
      to_unsafe.as(LibGtk::TableChild*).value.xpadding = UInt16.new(value)
    end

    def ypadding
      (to_unsafe.as(LibGtk::TableChild*).value.ypadding)
    end

    def ypadding=(value : UInt16)
      to_unsafe.as(LibGtk::TableChild*).value.ypadding = UInt16.new(value)
    end

    def xexpand
      (to_unsafe.as(LibGtk::TableChild*).value.xexpand)
    end

    def xexpand=(value : UInt32)
      to_unsafe.as(LibGtk::TableChild*).value.xexpand = UInt32.new(value)
    end

    def yexpand
      (to_unsafe.as(LibGtk::TableChild*).value.yexpand)
    end

    def yexpand=(value : UInt32)
      to_unsafe.as(LibGtk::TableChild*).value.yexpand = UInt32.new(value)
    end

    def xshrink
      (to_unsafe.as(LibGtk::TableChild*).value.xshrink)
    end

    def xshrink=(value : UInt32)
      to_unsafe.as(LibGtk::TableChild*).value.xshrink = UInt32.new(value)
    end

    def yshrink
      (to_unsafe.as(LibGtk::TableChild*).value.yshrink)
    end

    def yshrink=(value : UInt32)
      to_unsafe.as(LibGtk::TableChild*).value.yshrink = UInt32.new(value)
    end

    def xfill
      (to_unsafe.as(LibGtk::TableChild*).value.xfill)
    end

    def xfill=(value : UInt32)
      to_unsafe.as(LibGtk::TableChild*).value.xfill = UInt32.new(value)
    end

    def yfill
      (to_unsafe.as(LibGtk::TableChild*).value.yfill)
    end

    def yfill=(value : UInt32)
      to_unsafe.as(LibGtk::TableChild*).value.yfill = UInt32.new(value)
    end

  end
end

