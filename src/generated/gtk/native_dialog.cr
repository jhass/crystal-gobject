module Gtk
  class NativeDialog < GObject::Object
    @gtk_native_dialog : LibGtk::NativeDialog*?
    def initialize(@gtk_native_dialog : LibGtk::NativeDialog*)
    end

    def to_unsafe
      @gtk_native_dialog.not_nil!
    end

    def modal
      __return_value = LibGtk.native_dialog_get_modal(to_unsafe.as(LibGtk::NativeDialog*))
      __return_value
    end

    def title
      __return_value = LibGtk.native_dialog_get_title(to_unsafe.as(LibGtk::NativeDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def transient_for
      __return_value = LibGtk.native_dialog_get_transient_for(to_unsafe.as(LibGtk::NativeDialog*))
      Gtk::Window.new(__return_value)
    end

    def visible
      __return_value = LibGtk.native_dialog_get_visible(to_unsafe.as(LibGtk::NativeDialog*))
      __return_value
    end

    def destroy
      LibGtk.native_dialog_destroy(to_unsafe.as(LibGtk::NativeDialog*))
      nil
    end

    def modal
      __return_value = LibGtk.native_dialog_get_modal(to_unsafe.as(LibGtk::NativeDialog*))
      __return_value
    end

    def title
      __return_value = LibGtk.native_dialog_get_title(to_unsafe.as(LibGtk::NativeDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def transient_for
      __return_value = LibGtk.native_dialog_get_transient_for(to_unsafe.as(LibGtk::NativeDialog*))
      Gtk::Window.new(__return_value) if __return_value
    end

    def visible
      __return_value = LibGtk.native_dialog_get_visible(to_unsafe.as(LibGtk::NativeDialog*))
      __return_value
    end

    def hide
      LibGtk.native_dialog_hide(to_unsafe.as(LibGtk::NativeDialog*))
      nil
    end

    def run
      __return_value = LibGtk.native_dialog_run(to_unsafe.as(LibGtk::NativeDialog*))
      __return_value
    end

    def modal=(modal)
      LibGtk.native_dialog_set_modal(to_unsafe.as(LibGtk::NativeDialog*), modal)
      nil
    end

    def title=(title)
      LibGtk.native_dialog_set_title(to_unsafe.as(LibGtk::NativeDialog*), title.to_unsafe)
      nil
    end

    def transient_for=(parent)
      LibGtk.native_dialog_set_transient_for(to_unsafe.as(LibGtk::NativeDialog*), parent ? parent.to_unsafe.as(LibGtk::Window*) : nil)
      nil
    end

    def show
      LibGtk.native_dialog_show(to_unsafe.as(LibGtk::NativeDialog*))
      nil
    end

    alias ResponseSignal = NativeDialog, Int32 ->
    def on_response(&__block : ResponseSignal)
      __callback = ->(_arg0 : LibGtk::NativeDialog*, _arg1 : LibGtk::Int32*) {
       __return_value = __block.call(NativeDialog.new(_arg0), _arg1)
       __return_value
      }
      connect("response", __callback)
    end

  end
end

