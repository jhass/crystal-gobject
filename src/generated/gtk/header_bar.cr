require "./container"

module Gtk
  class HeaderBar < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::HeaderBar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::HeaderBar*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def custom_title
      __return_value = LibGtk.header_bar_get_custom_title(to_unsafe.as(LibGtk::HeaderBar*))
      Gtk::Widget.new(__return_value)
    end

    def decoration_layout
      __return_value = LibGtk.header_bar_get_decoration_layout(to_unsafe.as(LibGtk::HeaderBar*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def decoration_layout_set
      __return_value = LibGtk.header_bar_get_decoration_layout_set(to_unsafe.as(LibGtk::HeaderBar*))
      __return_value
    end

    def has_subtitle
      __return_value = LibGtk.header_bar_get_has_subtitle(to_unsafe.as(LibGtk::HeaderBar*))
      __return_value
    end

    def show_close_button
      __return_value = LibGtk.header_bar_get_show_close_button(to_unsafe.as(LibGtk::HeaderBar*))
      __return_value
    end

    def spacing
      __return_value = LibGtk.header_bar_get_spacing(to_unsafe.as(LibGtk::HeaderBar*))
      __return_value
    end

    def subtitle
      __return_value = LibGtk.header_bar_get_subtitle(to_unsafe.as(LibGtk::HeaderBar*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def title
      __return_value = LibGtk.header_bar_get_title(to_unsafe.as(LibGtk::HeaderBar*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new : self
      __return_value = LibGtk.header_bar_new
      cast Gtk::Widget.new(__return_value)
    end

    def custom_title
      __return_value = LibGtk.header_bar_get_custom_title(@pointer.as(LibGtk::HeaderBar*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def decoration_layout
      __return_value = LibGtk.header_bar_get_decoration_layout(@pointer.as(LibGtk::HeaderBar*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def has_subtitle
      __return_value = LibGtk.header_bar_get_has_subtitle(@pointer.as(LibGtk::HeaderBar*))
      __return_value
    end

    def show_close_button
      __return_value = LibGtk.header_bar_get_show_close_button(@pointer.as(LibGtk::HeaderBar*))
      __return_value
    end

    def subtitle
      __return_value = LibGtk.header_bar_get_subtitle(@pointer.as(LibGtk::HeaderBar*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def title
      __return_value = LibGtk.header_bar_get_title(@pointer.as(LibGtk::HeaderBar*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def pack_end(child)
      LibGtk.header_bar_pack_end(@pointer.as(LibGtk::HeaderBar*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def pack_start(child)
      LibGtk.header_bar_pack_start(@pointer.as(LibGtk::HeaderBar*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def custom_title=(title_widget)
      LibGtk.header_bar_set_custom_title(@pointer.as(LibGtk::HeaderBar*), title_widget ? title_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def decoration_layout=(layout)
      LibGtk.header_bar_set_decoration_layout(@pointer.as(LibGtk::HeaderBar*), layout ? layout.to_unsafe : nil)
      nil
    end

    def has_subtitle=(setting)
      LibGtk.header_bar_set_has_subtitle(@pointer.as(LibGtk::HeaderBar*), setting)
      nil
    end

    def show_close_button=(setting)
      LibGtk.header_bar_set_show_close_button(@pointer.as(LibGtk::HeaderBar*), setting)
      nil
    end

    def subtitle=(subtitle)
      LibGtk.header_bar_set_subtitle(@pointer.as(LibGtk::HeaderBar*), subtitle ? subtitle.to_unsafe : nil)
      nil
    end

    def title=(title)
      LibGtk.header_bar_set_title(@pointer.as(LibGtk::HeaderBar*), title ? title.to_unsafe : nil)
      nil
    end

  end
end

