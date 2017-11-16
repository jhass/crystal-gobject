require "./bin"

module Gtk
  class Expander < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::Expander*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Expander*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def expanded
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "expanded", gvalue)
      gvalue.boolean
    end

    def label
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "label", gvalue)
      gvalue.string
    end

    def label_fill
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "label_fill", gvalue)
      gvalue.boolean
    end

    def label_widget
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "label_widget", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    def resize_toplevel
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "resize_toplevel", gvalue)
      gvalue.boolean
    end

    def spacing
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "spacing", gvalue)
      gvalue
    end

    def use_markup
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "use_markup", gvalue)
      gvalue.boolean
    end

    def use_underline
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "use_underline", gvalue)
      gvalue.boolean
    end

    def self.new(label) : self
      __return_value = LibGtk.expander_new(label ? label.to_unsafe : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic(label) : self
      __return_value = LibGtk.expander_new_with_mnemonic(label ? label.to_unsafe : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def expanded
      __return_value = LibGtk.expander_get_expanded(@pointer.as(LibGtk::Expander*))
      __return_value
    end

    def label
      __return_value = LibGtk.expander_get_label(@pointer.as(LibGtk::Expander*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def label_fill
      __return_value = LibGtk.expander_get_label_fill(@pointer.as(LibGtk::Expander*))
      __return_value
    end

    def label_widget
      __return_value = LibGtk.expander_get_label_widget(@pointer.as(LibGtk::Expander*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def resize_toplevel
      __return_value = LibGtk.expander_get_resize_toplevel(@pointer.as(LibGtk::Expander*))
      __return_value
    end

    def spacing
      __return_value = LibGtk.expander_get_spacing(@pointer.as(LibGtk::Expander*))
      __return_value
    end

    def use_markup
      __return_value = LibGtk.expander_get_use_markup(@pointer.as(LibGtk::Expander*))
      __return_value
    end

    def use_underline
      __return_value = LibGtk.expander_get_use_underline(@pointer.as(LibGtk::Expander*))
      __return_value
    end

    def expanded=(expanded)
      LibGtk.expander_set_expanded(@pointer.as(LibGtk::Expander*), expanded)
      nil
    end

    def label=(label)
      LibGtk.expander_set_label(@pointer.as(LibGtk::Expander*), label ? label.to_unsafe : nil)
      nil
    end

    def label_fill=(label_fill)
      LibGtk.expander_set_label_fill(@pointer.as(LibGtk::Expander*), label_fill)
      nil
    end

    def label_widget=(label_widget)
      LibGtk.expander_set_label_widget(@pointer.as(LibGtk::Expander*), label_widget ? label_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def resize_toplevel=(resize_toplevel)
      LibGtk.expander_set_resize_toplevel(@pointer.as(LibGtk::Expander*), resize_toplevel)
      nil
    end

    def spacing=(spacing)
      LibGtk.expander_set_spacing(@pointer.as(LibGtk::Expander*), Int32.new(spacing))
      nil
    end

    def use_markup=(use_markup)
      LibGtk.expander_set_use_markup(@pointer.as(LibGtk::Expander*), use_markup)
      nil
    end

    def use_underline=(use_underline)
      LibGtk.expander_set_use_underline(@pointer.as(LibGtk::Expander*), use_underline)
      nil
    end

    alias ActivateSignal = Expander ->
    def on_activate(&__block : ActivateSignal)
      __callback = ->(_arg0 : LibGtk::Expander*) {
       __return_value = __block.call(Expander.new(_arg0))
       __return_value
      }
      connect("activate", __callback)
    end

  end
end

