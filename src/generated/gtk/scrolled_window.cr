require "./bin"

module Gtk
  class ScrolledWindow < Bin
    def initialize @gtk_scrolled_window
    end

    def to_unsafe
      @gtk_scrolled_window.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable











    def self.new_internal(hadjustment, vadjustment)
      __return_value = LibGtk.scrolled_window_new(hadjustment && (hadjustment.to_unsafe as LibGtk::Adjustment*), vadjustment && (vadjustment.to_unsafe as LibGtk::Adjustment*))
      Gtk::Widget.new(__return_value)
    end

    def add_with_viewport(child)
      __return_value = LibGtk.scrolled_window_add_with_viewport((to_unsafe as LibGtk::ScrolledWindow*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def capture_button_press
      __return_value = LibGtk.scrolled_window_get_capture_button_press((to_unsafe as LibGtk::ScrolledWindow*))
      __return_value
    end

    def hadjustment
      __return_value = LibGtk.scrolled_window_get_hadjustment((to_unsafe as LibGtk::ScrolledWindow*))
      Gtk::Adjustment.new(__return_value)
    end

    def hscrollbar
      __return_value = LibGtk.scrolled_window_get_hscrollbar((to_unsafe as LibGtk::ScrolledWindow*))
      Gtk::Widget.new(__return_value)
    end

    def kinetic_scrolling
      __return_value = LibGtk.scrolled_window_get_kinetic_scrolling((to_unsafe as LibGtk::ScrolledWindow*))
      __return_value
    end

    def min_content_height
      __return_value = LibGtk.scrolled_window_get_min_content_height((to_unsafe as LibGtk::ScrolledWindow*))
      __return_value
    end

    def min_content_width
      __return_value = LibGtk.scrolled_window_get_min_content_width((to_unsafe as LibGtk::ScrolledWindow*))
      __return_value
    end

    def overlay_scrolling
      __return_value = LibGtk.scrolled_window_get_overlay_scrolling((to_unsafe as LibGtk::ScrolledWindow*))
      __return_value
    end

    def placement
      __return_value = LibGtk.scrolled_window_get_placement((to_unsafe as LibGtk::ScrolledWindow*))
      __return_value
    end

    def policy(hscrollbar_policy, vscrollbar_policy)
      __return_value = LibGtk.scrolled_window_get_policy((to_unsafe as LibGtk::ScrolledWindow*), hscrollbar_policy, vscrollbar_policy)
      __return_value
    end

    def shadow_type
      __return_value = LibGtk.scrolled_window_get_shadow_type((to_unsafe as LibGtk::ScrolledWindow*))
      __return_value
    end

    def vadjustment
      __return_value = LibGtk.scrolled_window_get_vadjustment((to_unsafe as LibGtk::ScrolledWindow*))
      Gtk::Adjustment.new(__return_value)
    end

    def vscrollbar
      __return_value = LibGtk.scrolled_window_get_vscrollbar((to_unsafe as LibGtk::ScrolledWindow*))
      Gtk::Widget.new(__return_value)
    end

    def capture_button_press=(capture_button_press)
      __return_value = LibGtk.scrolled_window_set_capture_button_press((to_unsafe as LibGtk::ScrolledWindow*), Bool.cast(capture_button_press))
      __return_value
    end

    def hadjustment=(hadjustment)
      __return_value = LibGtk.scrolled_window_set_hadjustment((to_unsafe as LibGtk::ScrolledWindow*), (hadjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def kinetic_scrolling=(kinetic_scrolling)
      __return_value = LibGtk.scrolled_window_set_kinetic_scrolling((to_unsafe as LibGtk::ScrolledWindow*), Bool.cast(kinetic_scrolling))
      __return_value
    end

    def min_content_height=(height)
      __return_value = LibGtk.scrolled_window_set_min_content_height((to_unsafe as LibGtk::ScrolledWindow*), Int32.cast(height))
      __return_value
    end

    def min_content_width=(width)
      __return_value = LibGtk.scrolled_window_set_min_content_width((to_unsafe as LibGtk::ScrolledWindow*), Int32.cast(width))
      __return_value
    end

    def overlay_scrolling=(overlay_scrolling)
      __return_value = LibGtk.scrolled_window_set_overlay_scrolling((to_unsafe as LibGtk::ScrolledWindow*), Bool.cast(overlay_scrolling))
      __return_value
    end

    def placement=(window_placement)
      __return_value = LibGtk.scrolled_window_set_placement((to_unsafe as LibGtk::ScrolledWindow*), window_placement)
      __return_value
    end

    def set_policy(hscrollbar_policy, vscrollbar_policy)
      __return_value = LibGtk.scrolled_window_set_policy((to_unsafe as LibGtk::ScrolledWindow*), hscrollbar_policy, vscrollbar_policy)
      __return_value
    end

    def shadow_type=(type)
      __return_value = LibGtk.scrolled_window_set_shadow_type((to_unsafe as LibGtk::ScrolledWindow*), type)
      __return_value
    end

    def vadjustment=(vadjustment)
      __return_value = LibGtk.scrolled_window_set_vadjustment((to_unsafe as LibGtk::ScrolledWindow*), (vadjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def unset_placement
      __return_value = LibGtk.scrolled_window_unset_placement((to_unsafe as LibGtk::ScrolledWindow*))
      __return_value
    end

  end
end

