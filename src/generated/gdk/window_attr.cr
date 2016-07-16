module Gdk
  class WindowAttr
    include GObject::WrappedType

    def self.new(title : String|Nil = nil, event_mask : Int32|Nil = nil, x : Int32|Nil = nil, y : Int32|Nil = nil, width : Int32|Nil = nil, height : Int32|Nil = nil, wclass : Gdk::WindowWindowClass|Nil = nil, visual : Gdk::Visual|Nil = nil, window_type : Gdk::WindowType|Nil = nil, cursor : Gdk::Cursor|Nil = nil, wmclass_name : String|Nil = nil, wmclass_class : String|Nil = nil, override_redirect : Bool|Nil = nil, type_hint : Gdk::WindowTypeHint|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(80, 0u8)
      new(ptr.as(LibGdk::WindowAttr*)).tap do |object|
        object.title = title unless title.nil?
        object.event_mask = event_mask unless event_mask.nil?
        object.x = x unless x.nil?
        object.y = y unless y.nil?
        object.width = width unless width.nil?
        object.height = height unless height.nil?
        object.wclass = wclass unless wclass.nil?
        object.visual = visual unless visual.nil?
        object.window_type = window_type unless window_type.nil?
        object.cursor = cursor unless cursor.nil?
        object.wmclass_name = wmclass_name unless wmclass_name.nil?
        object.wmclass_class = wmclass_class unless wmclass_class.nil?
        object.override_redirect = override_redirect unless override_redirect.nil?
        object.type_hint = type_hint unless type_hint.nil?
      end
    end

    @gdk_window_attr : LibGdk::WindowAttr*?
    def initialize(@gdk_window_attr : LibGdk::WindowAttr*)
    end

    def to_unsafe
      @gdk_window_attr.not_nil!.as(Void*)
    end

    def title
      (raise "Expected string but got null" unless (to_unsafe.value.title); ::String.new((to_unsafe.value.title)))
    end

    def title=(value : String)
      to_unsafe.value.title = value.to_unsafe
    end

    def event_mask
      (to_unsafe.value.event_mask)
    end

    def event_mask=(value : Int32)
      to_unsafe.value.event_mask = Int32.new(value)
    end

    def x
      (to_unsafe.value.x)
    end

    def x=(value : Int32)
      to_unsafe.value.x = Int32.new(value)
    end

    def y
      (to_unsafe.value.y)
    end

    def y=(value : Int32)
      to_unsafe.value.y = Int32.new(value)
    end

    def width
      (to_unsafe.value.width)
    end

    def width=(value : Int32)
      to_unsafe.value.width = Int32.new(value)
    end

    def height
      (to_unsafe.value.height)
    end

    def height=(value : Int32)
      to_unsafe.value.height = Int32.new(value)
    end

    def wclass
      (to_unsafe.value.wclass)
    end

    def wclass=(value : Gdk::WindowWindowClass)
      to_unsafe.value.wclass = value
    end

    def visual
      Gdk::Visual.new((to_unsafe.value.visual))
    end

    def visual=(value : Gdk::Visual)
      to_unsafe.value.visual = value.to_unsafe.as(LibGdk::Visual*)
    end

    def window_type
      (to_unsafe.value.window_type)
    end

    def window_type=(value : Gdk::WindowType)
      to_unsafe.value.window_type = value
    end

    def cursor
      Gdk::Cursor.new((to_unsafe.value.cursor))
    end

    def cursor=(value : Gdk::Cursor)
      to_unsafe.value.cursor = value.to_unsafe.as(LibGdk::Cursor*)
    end

    def wmclass_name
      (raise "Expected string but got null" unless (to_unsafe.value.wmclass_name); ::String.new((to_unsafe.value.wmclass_name)))
    end

    def wmclass_name=(value : String)
      to_unsafe.value.wmclass_name = value.to_unsafe
    end

    def wmclass_class
      (raise "Expected string but got null" unless (to_unsafe.value.wmclass_class); ::String.new((to_unsafe.value.wmclass_class)))
    end

    def wmclass_class=(value : String)
      to_unsafe.value.wmclass_class = value.to_unsafe
    end

    def override_redirect
      (to_unsafe.value.override_redirect)
    end

    def override_redirect=(value : Bool)
      to_unsafe.value.override_redirect = value
    end

    def type_hint
      (to_unsafe.value.type_hint)
    end

    def type_hint=(value : Gdk::WindowTypeHint)
      to_unsafe.value.type_hint = value
    end

  end
end

