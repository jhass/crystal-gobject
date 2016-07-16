module Gtk
  class IconTheme < GObject::Object
    @gtk_icon_theme : LibGtk::IconTheme*?
    def initialize(@gtk_icon_theme : LibGtk::IconTheme*)
    end

    def to_unsafe
      @gtk_icon_theme.not_nil!
    end

    def self.new : self
      __return_value = LibGtk.icon_theme_new
      cast Gtk::IconTheme.new(__return_value)
    end

    def self.add_builtin_icon(icon_name, size, pixbuf)
      __return_value = LibGtk.icon_theme_add_builtin_icon(icon_name.to_unsafe, Int32.new(size), pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
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
      __return_value = LibGtk.icon_theme_add_resource_path(to_unsafe.as(LibGtk::IconTheme*), path.to_unsafe)
      __return_value
    end

    def append_search_path(path)
      __return_value = LibGtk.icon_theme_append_search_path(to_unsafe.as(LibGtk::IconTheme*), path.to_unsafe)
      __return_value
    end

    def choose_icon(icon_names, size, flags)
      __return_value = LibGtk.icon_theme_choose_icon(to_unsafe.as(LibGtk::IconTheme*), icon_names, Int32.new(size), flags)
      Gtk::IconInfo.new(__return_value) if __return_value
    end

    def choose_icon_for_scale(icon_names, size, scale, flags)
      __return_value = LibGtk.icon_theme_choose_icon_for_scale(to_unsafe.as(LibGtk::IconTheme*), icon_names, Int32.new(size), Int32.new(scale), flags)
      Gtk::IconInfo.new(__return_value) if __return_value
    end

    def example_icon_name
      __return_value = LibGtk.icon_theme_get_example_icon_name(to_unsafe.as(LibGtk::IconTheme*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def icon_sizes(icon_name)
      __return_value = LibGtk.icon_theme_get_icon_sizes(to_unsafe.as(LibGtk::IconTheme*), icon_name.to_unsafe)
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def search_path(path, n_elements)
      __return_value = LibGtk.icon_theme_get_search_path(to_unsafe.as(LibGtk::IconTheme*), path, Int32.new(n_elements))
      __return_value
    end

    def has_icon(icon_name)
      __return_value = LibGtk.icon_theme_has_icon(to_unsafe.as(LibGtk::IconTheme*), icon_name.to_unsafe)
      __return_value
    end

    def list_contexts
      __return_value = LibGtk.icon_theme_list_contexts(to_unsafe.as(LibGtk::IconTheme*))
      __return_value
    end

    def list_icons(context)
      __return_value = LibGtk.icon_theme_list_icons(to_unsafe.as(LibGtk::IconTheme*), context && context.to_unsafe)
      __return_value
    end

    def load_icon(icon_name, size, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_theme_load_icon(to_unsafe.as(LibGtk::IconTheme*), icon_name.to_unsafe, Int32.new(size), flags, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def load_icon_for_scale(icon_name, size, scale, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_theme_load_icon_for_scale(to_unsafe.as(LibGtk::IconTheme*), icon_name.to_unsafe, Int32.new(size), Int32.new(scale), flags, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def load_surface(icon_name, size, scale, for_window, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_theme_load_surface(to_unsafe.as(LibGtk::IconTheme*), icon_name.to_unsafe, Int32.new(size), Int32.new(scale), for_window && for_window.to_unsafe.as(LibGdk::Window*), flags, pointerof(__error))
      GLib::Error.assert __error
      Cairo::Surface.new(__return_value) if __return_value
    end

    def lookup_by_gicon(icon, size, flags)
      __return_value = LibGtk.icon_theme_lookup_by_gicon(to_unsafe.as(LibGtk::IconTheme*), icon.to_unsafe.as(LibGio::Icon*), Int32.new(size), flags)
      Gtk::IconInfo.new(__return_value) if __return_value
    end

    def lookup_by_gicon_for_scale(icon, size, scale, flags)
      __return_value = LibGtk.icon_theme_lookup_by_gicon_for_scale(to_unsafe.as(LibGtk::IconTheme*), icon.to_unsafe.as(LibGio::Icon*), Int32.new(size), Int32.new(scale), flags)
      Gtk::IconInfo.new(__return_value) if __return_value
    end

    def lookup_icon(icon_name, size, flags)
      __return_value = LibGtk.icon_theme_lookup_icon(to_unsafe.as(LibGtk::IconTheme*), icon_name.to_unsafe, Int32.new(size), flags)
      Gtk::IconInfo.new(__return_value) if __return_value
    end

    def lookup_icon_for_scale(icon_name, size, scale, flags)
      __return_value = LibGtk.icon_theme_lookup_icon_for_scale(to_unsafe.as(LibGtk::IconTheme*), icon_name.to_unsafe, Int32.new(size), Int32.new(scale), flags)
      Gtk::IconInfo.new(__return_value) if __return_value
    end

    def prepend_search_path(path)
      __return_value = LibGtk.icon_theme_prepend_search_path(to_unsafe.as(LibGtk::IconTheme*), path.to_unsafe)
      __return_value
    end

    def rescan_if_needed
      __return_value = LibGtk.icon_theme_rescan_if_needed(to_unsafe.as(LibGtk::IconTheme*))
      __return_value
    end

    def custom_theme=(theme_name)
      __return_value = LibGtk.icon_theme_set_custom_theme(to_unsafe.as(LibGtk::IconTheme*), theme_name && theme_name.to_unsafe)
      __return_value
    end

    def screen=(screen)
      __return_value = LibGtk.icon_theme_set_screen(to_unsafe.as(LibGtk::IconTheme*), screen.to_unsafe.as(LibGdk::Screen*))
      __return_value
    end

    def set_search_path(path, n_elements)
      __return_value = LibGtk.icon_theme_set_search_path(to_unsafe.as(LibGtk::IconTheme*), path, Int32.new(n_elements))
      __return_value
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

