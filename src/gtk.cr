require "signal"
require "./lib_gtk"

lib LibGObject
 fun signal_connect_data = g_signal_connect_data(instance : Void*, signal : UInt8*, callback : Void*, data : Void*, destroy_data : Void*, connect_flags : ConnectFlags) : UInt64
end

redefine_main do |main|
  LibGtk.init pointerof(ARGC_UNSAFE), pointerof(ARGV_UNSAFE)

  {{main}}

  LibGtk.main
end

class GObject
  module Type
    def self.make_fundamental x
      x.to_u64 << 2
    end

    INVALID   = make_fundamental 0
    NONE      = make_fundamental 1
    INTERFACE = make_fundamental 2
    CHAR      = make_fundamental 3
    UCHAR     = make_fundamental 4
    BOOLEAN   = make_fundamental 5
    INT       = make_fundamental 6
    UINT      = make_fundamental 7
    LONG      = make_fundamental 8
    ULONG     = make_fundamental 9
    INT64     = make_fundamental 10
    UINT64    = make_fundamental 11
    ENUM      = make_fundamental 12
    FLAGS     = make_fundamental 13
    FLOAT     = make_fundamental 14
    DOUBLE    = make_fundamental 15
    STRING    = make_fundamental 16
    POINTER   = make_fundamental 17
    BOXED     = make_fundamental 18
    PARAM     = make_fundamental 19
    OBJECT    = make_fundamental 20
  end

  class Value
    def self.wrap value
      strct = LibGObject::Value.new
      ptr = pointerof(strct)

      case value
      when String
        LibGObject.value_init(ptr, Type::STRING)
        LibGObject.value_set_string ptr, value
      else
        raise "Not yet implemented"
      end

      new ptr
    end

    private def initialize @ptr
    end

    def to_unsafe
      @ptr
    end
  end

  OBJECTS = Hash(String, GObject.class).new

  macro inherited
    OBJECTS[{{@type.name}}] = {{@type}}

    def self.ensure object
      return object if object.is_a? {{@type}}
      raise "Assertion failed, #{object} is not a #{{{@type}}}"
    end
  end

  def self.wrap ptr
    object = new ptr
    klass = OBJECTS[object.type]?
    return object unless klass
    object = klass.new ptr as LibGObject::Object*
    LibGObject.object_ref ptr
    object
  end

  def initialize @ptr : LibGObject::Object*
  end

  def type
    type = String.new(LibGObject.type_name(object.value.g_type_instance.g_class.value.g_type))
    type.gsub(/^[A-Z][a-z]*(?=[A-Z])/) {|m| "#{m}::" }
  end

  def connect signal, &callback
    LibGObject.signal_connect_data instance, signal, callback.pointer, callback.closure_data, nil, LibGObject::ConnectFlags::SWAPPED
  end

  def set property, value
    LibGObject.object_set_property object, property, Value.wrap(value)
  end

  private def instance
    @ptr as Void*
  end

  protected def object
    @ptr
  end

  def to_unsafe
    object
  end

  def finalize
    LibGObject.object_unref object
  end

  def to_s(io)
    io << "#{inspect}(#{type})"
  end
end

module Gtk
  class Widget < GObject
    def show
      LibGtk.widget_show widget
    end

    def show_all
      LibGtk.widget_show_all widget
    end

    def hide
      LibGtk.widget_hide widget
    end

    def destroy
      LibGtk.widget_destroy widget
    end

    protected def widget
      object as LibGtk::Widget*
    end

    def to_unsafe
      widget
    end
  end

  class Container < Widget
    def border_width= value
      LibGtk.container_set_border_width container, value.to_u32
    end

    def add widget
      LibGtk.container_add container, widget.widget
    end

    private def container
      object as LibGtk::Container*
    end

    def to_unsafe
      container
    end
  end

  class Bin < Container
    private def bin
      object as LibGtk::Bin*
    end

    def to_unsafe
      bin
    end
  end

  class Window < Bin
    def self.new
      super LibGtk.window_new(LibGtk::WindowType::TOPLEVEL) as LibGObject::Object*
    end

    def title= title
      LibGtk.window_set_title self, title
    end

    def to_unsafe
      object as LibGtk::Window*
    end
  end

  class Dialog < Window
  end

  class MessageDialog < Dialog
    def text= message
      set "text", message
    end

    def to_unsafe
      object as LibGtk::MessageDialog*
    end
  end

  class Button < Bin
    def self.new_with_label label
      new LibGtk.button_new_with_label(label) as LibGObject::Object*
    end

    def to_unsafe
      object as LibGtk::Button*
    end
  end

  class Entry < Widget
    def text
      String.new LibGtk.entry_get_text self
    end

    def to_unsafe
      object as LibGtk::Entry*
    end
  end

  class Misc < Widget
  end

  class Label < Misc
    def text= text
      LibGtk.label_set_text self, text
    end

    def to_unsafe
      object as LibGtk::Label*
    end
  end

  class Builder < GObject
    def self.from_file path
      new LibGtk.builder_new_from_file(path) as LibGObject::Object*
    end

    def connect_signals
      LibGtk.builder_connect_signals self, nil
    end

    def [] id
      GObject.wrap LibGtk.builder_get_object self, id
    end

    def to_unsafe
      object as LibGtk::Builder*
    end
  end

  def self.quit
    LibGtk.main_quit
  end
end

Signal.trap(Signal::INT) do
  Gtk.quit
end
