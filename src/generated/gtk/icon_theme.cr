module Gtk
  class IconTheme < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::IconTheme*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IconTheme*)
    end

    def self.new : self
      __return_value = LibGtk.icon_theme_new
      cast Gtk::IconTheme.new(__return_value)
    end

    def self.add_builtin_icon(icon_name, size, pixbuf)
      LibGtk.icon_theme_add_builtin_icon(icon_name.to_unsafe, Int32.new(size), pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      nil
    end

    def self.default
      __return_value = LibGtk.icon_theme_get_default
      Gtk::IconTheme.new(__return_value)
    end

    def self.for_screen(screen)
      __return_value = LibGtk.icon_theme_get_for_screen(screen.to_unsafe.as(LibGdk::Screen*))
      Gtk::IconTheme.new(__return_value)
    end

    def add_resource_path(path)
      LibGtk.icon_theme_add_resource_path(@pointer.as(LibGtk::IconTheme*), path.to_unsafe)
      nil
    end

    def append_search_path(path)
      LibGtk.icon_theme_append_search_path(@pointer.as(LibGtk::IconTheme*), path.to_unsafe)
      nil
    end

    def choose_icon(icon_names, size, flags : Gtk::IconLookupFlags)
      __return_value = LibGtk.icon_theme_choose_icon(@pointer.as(LibGtk::IconTheme*), icon_names, Int32.new(size), flags)
      Gtk::IconInfo.new(__return_value) if __return_value
    end

    def choose_icon_for_scale(icon_names, size, scale, flags : Gtk::IconLookupFlags)
      __return_value = LibGtk.icon_theme_choose_icon_for_scale(@pointer.as(LibGtk::IconTheme*), icon_names, Int32.new(size), Int32.new(scale), flags)
      Gtk::IconInfo.new(__return_value) if __return_value
    end

    def example_icon_name
      __return_value = LibGtk.icon_theme_get_example_icon_name(@pointer.as(LibGtk::IconTheme*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def icon_sizes(icon_name)
      __return_value = LibGtk.icon_theme_get_icon_sizes(@pointer.as(LibGtk::IconTheme*), icon_name.to_unsafe)
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def search_path(path, n_elements)
      LibGtk.icon_theme_get_search_path(@pointer.as(LibGtk::IconTheme*), path, n_elements)
      nil
    end

    def has_icon(icon_name)
      __return_value = LibGtk.icon_theme_has_icon(@pointer.as(LibGtk::IconTheme*), icon_name.to_unsafe)
      __return_value
    end

    def list_contexts
      __return_value = LibGtk.icon_theme_list_contexts(@pointer.as(LibGtk::IconTheme*))
      GLib::ListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def list_icons(context)
      __return_value = LibGtk.icon_theme_list_icons(@pointer.as(LibGtk::IconTheme*), context ? context.to_unsafe : nil)
      GLib::ListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def load_icon(icon_name, size, flags : Gtk::IconLookupFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_theme_load_icon(@pointer.as(LibGtk::IconTheme*), icon_name.to_unsafe, Int32.new(size), flags, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def load_icon_for_scale(icon_name, size, scale, flags : Gtk::IconLookupFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_theme_load_icon_for_scale(@pointer.as(LibGtk::IconTheme*), icon_name.to_unsafe, Int32.new(size), Int32.new(scale), flags, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def load_surface(icon_name, size, scale, for_window, flags : Gtk::IconLookupFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_theme_load_surface(@pointer.as(LibGtk::IconTheme*), icon_name.to_unsafe, Int32.new(size), Int32.new(scale), for_window ? for_window.to_unsafe.as(LibGdk::Window*) : nil, flags, pointerof(__error))
      GLib::Error.assert __error
      Cairo::Surface.new(__return_value) if __return_value
    end

    def lookup_by_gicon(icon, size, flags : Gtk::IconLookupFlags)
      __return_value = LibGtk.icon_theme_lookup_by_gicon(@pointer.as(LibGtk::IconTheme*), icon.to_unsafe.as(LibGio::Icon*), Int32.new(size), flags)
      Gtk::IconInfo.new(__return_value) if __return_value
    end

    def lookup_by_gicon_for_scale(icon, size, scale, flags : Gtk::IconLookupFlags)
      __return_value = LibGtk.icon_theme_lookup_by_gicon_for_scale(@pointer.as(LibGtk::IconTheme*), icon.to_unsafe.as(LibGio::Icon*), Int32.new(size), Int32.new(scale), flags)
      Gtk::IconInfo.new(__return_value) if __return_value
    end

    def lookup_icon(icon_name, size, flags : Gtk::IconLookupFlags)
      __return_value = LibGtk.icon_theme_lookup_icon(@pointer.as(LibGtk::IconTheme*), icon_name.to_unsafe, Int32.new(size), flags)
      Gtk::IconInfo.new(__return_value) if __return_value
    end

    def lookup_icon_for_scale(icon_name, size, scale, flags : Gtk::IconLookupFlags)
      __return_value = LibGtk.icon_theme_lookup_icon_for_scale(@pointer.as(LibGtk::IconTheme*), icon_name.to_unsafe, Int32.new(size), Int32.new(scale), flags)
      Gtk::IconInfo.new(__return_value) if __return_value
    end

    def prepend_search_path(path)
      LibGtk.icon_theme_prepend_search_path(@pointer.as(LibGtk::IconTheme*), path.to_unsafe)
      nil
    end

    def rescan_if_needed
      __return_value = LibGtk.icon_theme_rescan_if_needed(@pointer.as(LibGtk::IconTheme*))
      __return_value
    end

    def custom_theme=(theme_name)
      LibGtk.icon_theme_set_custom_theme(@pointer.as(LibGtk::IconTheme*), theme_name ? theme_name.to_unsafe : nil)
      nil
    end

    def screen=(screen)
      LibGtk.icon_theme_set_screen(@pointer.as(LibGtk::IconTheme*), screen.to_unsafe.as(LibGdk::Screen*))
      nil
    end

    def set_search_path(path, n_elements)
      LibGtk.icon_theme_set_search_path(@pointer.as(LibGtk::IconTheme*), path, Int32.new(n_elements))
      nil
    end

    alias ChangedSignal = IconTheme ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::IconTheme*) {
       __return_value = __block.call(IconTheme.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

  end
end

