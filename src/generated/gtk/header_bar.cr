require "./container"

module Gtk
  class HeaderBar < Container
    def initialize(@gtk_header_bar)
    end

    def to_unsafe
      @gtk_header_bar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable








    def self.new_internal
      __return_value = LibGtk.header_bar_new
      Gtk::Widget.new(__return_value)
    end

    def custom_title
      __return_value = LibGtk.header_bar_get_custom_title((to_unsafe as LibGtk::HeaderBar*))
      Gtk::Widget.new(__return_value)
    end

    def decoration_layout
      __return_value = LibGtk.header_bar_get_decoration_layout((to_unsafe as LibGtk::HeaderBar*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def has_subtitle
      __return_value = LibGtk.header_bar_get_has_subtitle((to_unsafe as LibGtk::HeaderBar*))
      __return_value
    end

    def show_close_button
      __return_value = LibGtk.header_bar_get_show_close_button((to_unsafe as LibGtk::HeaderBar*))
      __return_value
    end

    def subtitle
      __return_value = LibGtk.header_bar_get_subtitle((to_unsafe as LibGtk::HeaderBar*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def title
      __return_value = LibGtk.header_bar_get_title((to_unsafe as LibGtk::HeaderBar*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def pack_end(child)
      __return_value = LibGtk.header_bar_pack_end((to_unsafe as LibGtk::HeaderBar*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def pack_start(child)
      __return_value = LibGtk.header_bar_pack_start((to_unsafe as LibGtk::HeaderBar*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def custom_title=(title_widget)
      __return_value = LibGtk.header_bar_set_custom_title((to_unsafe as LibGtk::HeaderBar*), title_widget && (title_widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def decoration_layout=(layout)
      __return_value = LibGtk.header_bar_set_decoration_layout((to_unsafe as LibGtk::HeaderBar*), layout && layout)
      __return_value
    end

    def has_subtitle=(setting)
      __return_value = LibGtk.header_bar_set_has_subtitle((to_unsafe as LibGtk::HeaderBar*), setting)
      __return_value
    end

    def show_close_button=(setting)
      __return_value = LibGtk.header_bar_set_show_close_button((to_unsafe as LibGtk::HeaderBar*), setting)
      __return_value
    end

    def subtitle=(subtitle)
      __return_value = LibGtk.header_bar_set_subtitle((to_unsafe as LibGtk::HeaderBar*), subtitle && subtitle)
      __return_value
    end

    def title=(title)
      __return_value = LibGtk.header_bar_set_title((to_unsafe as LibGtk::HeaderBar*), title && title)
      __return_value
    end

  end
end

