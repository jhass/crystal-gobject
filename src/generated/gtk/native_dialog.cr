module Gtk
  class NativeDialog < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::NativeDialog*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::NativeDialog*)
    end

    def modal
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "modal", gvalue)
      gvalue.boolean
    end

    def title
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "title", gvalue)
      gvalue.string
    end

    def transient_for
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "transient_for", gvalue)
      Gtk::Window.cast(gvalue.object)
    end

    def visible
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible", gvalue)
      gvalue.boolean
    end

    def destroy
      LibGtk.native_dialog_destroy(@pointer.as(LibGtk::NativeDialog*))
      nil
    end

    def modal
      __return_value = LibGtk.native_dialog_get_modal(@pointer.as(LibGtk::NativeDialog*))
      __return_value
    end

    def title
      __return_value = LibGtk.native_dialog_get_title(@pointer.as(LibGtk::NativeDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def transient_for
      __return_value = LibGtk.native_dialog_get_transient_for(@pointer.as(LibGtk::NativeDialog*))
      Gtk::Window.new(__return_value) if __return_value
    end

    def visible
      __return_value = LibGtk.native_dialog_get_visible(@pointer.as(LibGtk::NativeDialog*))
      __return_value
    end

    def hide
      LibGtk.native_dialog_hide(@pointer.as(LibGtk::NativeDialog*))
      nil
    end

    def run
      __return_value = LibGtk.native_dialog_run(@pointer.as(LibGtk::NativeDialog*))
      __return_value
    end

    def modal=(modal)
      LibGtk.native_dialog_set_modal(@pointer.as(LibGtk::NativeDialog*), modal)
      nil
    end

    def title=(title)
      LibGtk.native_dialog_set_title(@pointer.as(LibGtk::NativeDialog*), title.to_unsafe)
      nil
    end

    def transient_for=(parent)
      LibGtk.native_dialog_set_transient_for(@pointer.as(LibGtk::NativeDialog*), parent ? parent.to_unsafe.as(LibGtk::Window*) : nil)
      nil
    end

    def show
      LibGtk.native_dialog_show(@pointer.as(LibGtk::NativeDialog*))
      nil
    end

    alias ResponseSignal = NativeDialog, Int32 ->
    def on_response(&__block : ResponseSignal)
      __callback = ->(_arg0 : LibGtk::NativeDialog*, _arg1 : Int32*) {
       __return_value = __block.call(NativeDialog.new(_arg0), _arg1)
       __return_value
      }
      connect("response", __callback)
    end

  end
end

