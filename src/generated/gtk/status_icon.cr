module Gtk
  class StatusIcon < GObject::Object
    def initialize(@gtk_status_icon)
    end

    def to_unsafe
      @gtk_status_icon.not_nil!
    end
















    def self.new_internal
      __return_value = LibGtk.status_icon_new
      Gtk::StatusIcon.new(__return_value)
    end

    def self.new_from_file(filename)
      __return_value = LibGtk.status_icon_new_from_file(filename)
      Gtk::StatusIcon.new(__return_value)
    end

    def self.new_from_gicon(icon)
      __return_value = LibGtk.status_icon_new_from_gicon((icon.to_unsafe as LibGio::Icon*))
      Gtk::StatusIcon.new(__return_value)
    end

    def self.new_from_icon_name(icon_name)
      __return_value = LibGtk.status_icon_new_from_icon_name(icon_name)
      Gtk::StatusIcon.new(__return_value)
    end

    def self.new_from_pixbuf(pixbuf)
      __return_value = LibGtk.status_icon_new_from_pixbuf((pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      Gtk::StatusIcon.new(__return_value)
    end

    def self.new_from_stock(stock_id)
      __return_value = LibGtk.status_icon_new_from_stock(stock_id)
      Gtk::StatusIcon.new(__return_value)
    end

    def self.position_menu(menu, x, y, push_in, user_data)
      __return_value = LibGtk.status_icon_position_menu((menu.to_unsafe as LibGtk::Menu*), Int32.new(x), Int32.new(y), push_in, (user_data.to_unsafe as LibGtk::StatusIcon*))
      __return_value
    end

    def geometry(screen, area, orientation)
      __return_value = LibGtk.status_icon_get_geometry((to_unsafe as LibGtk::StatusIcon*), (screen.to_unsafe as LibGdk::Screen*), area, orientation)
      __return_value
    end

    def gicon
      __return_value = LibGtk.status_icon_get_gicon((to_unsafe as LibGtk::StatusIcon*))
      __return_value
    end

    def has_tooltip
      __return_value = LibGtk.status_icon_get_has_tooltip((to_unsafe as LibGtk::StatusIcon*))
      __return_value
    end

    def icon_name
      __return_value = LibGtk.status_icon_get_icon_name((to_unsafe as LibGtk::StatusIcon*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def pixbuf
      __return_value = LibGtk.status_icon_get_pixbuf((to_unsafe as LibGtk::StatusIcon*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def screen
      __return_value = LibGtk.status_icon_get_screen((to_unsafe as LibGtk::StatusIcon*))
      Gdk::Screen.new(__return_value)
    end

    def size
      __return_value = LibGtk.status_icon_get_size((to_unsafe as LibGtk::StatusIcon*))
      __return_value
    end

    def stock
      __return_value = LibGtk.status_icon_get_stock((to_unsafe as LibGtk::StatusIcon*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def storage_type
      __return_value = LibGtk.status_icon_get_storage_type((to_unsafe as LibGtk::StatusIcon*))
      __return_value
    end

    def title
      __return_value = LibGtk.status_icon_get_title((to_unsafe as LibGtk::StatusIcon*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def tooltip_markup
      __return_value = LibGtk.status_icon_get_tooltip_markup((to_unsafe as LibGtk::StatusIcon*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def tooltip_text
      __return_value = LibGtk.status_icon_get_tooltip_text((to_unsafe as LibGtk::StatusIcon*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def visible
      __return_value = LibGtk.status_icon_get_visible((to_unsafe as LibGtk::StatusIcon*))
      __return_value
    end

    def x11_window_id
      __return_value = LibGtk.status_icon_get_x11_window_id((to_unsafe as LibGtk::StatusIcon*))
      __return_value
    end

    def embedded?
      __return_value = LibGtk.status_icon_is_embedded((to_unsafe as LibGtk::StatusIcon*))
      __return_value
    end

    def from_file=(filename)
      __return_value = LibGtk.status_icon_set_from_file((to_unsafe as LibGtk::StatusIcon*), filename)
      __return_value
    end

    def from_gicon=(icon)
      __return_value = LibGtk.status_icon_set_from_gicon((to_unsafe as LibGtk::StatusIcon*), (icon.to_unsafe as LibGio::Icon*))
      __return_value
    end

    def from_icon_name=(icon_name)
      __return_value = LibGtk.status_icon_set_from_icon_name((to_unsafe as LibGtk::StatusIcon*), icon_name)
      __return_value
    end

    def from_pixbuf=(pixbuf)
      __return_value = LibGtk.status_icon_set_from_pixbuf((to_unsafe as LibGtk::StatusIcon*), pixbuf && (pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def from_stock=(stock_id)
      __return_value = LibGtk.status_icon_set_from_stock((to_unsafe as LibGtk::StatusIcon*), stock_id)
      __return_value
    end

    def has_tooltip=(has_tooltip)
      __return_value = LibGtk.status_icon_set_has_tooltip((to_unsafe as LibGtk::StatusIcon*), has_tooltip)
      __return_value
    end

    def name=(name)
      __return_value = LibGtk.status_icon_set_name((to_unsafe as LibGtk::StatusIcon*), name)
      __return_value
    end

    def screen=(screen)
      __return_value = LibGtk.status_icon_set_screen((to_unsafe as LibGtk::StatusIcon*), (screen.to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def title=(title)
      __return_value = LibGtk.status_icon_set_title((to_unsafe as LibGtk::StatusIcon*), title)
      __return_value
    end

    def tooltip_markup=(markup)
      __return_value = LibGtk.status_icon_set_tooltip_markup((to_unsafe as LibGtk::StatusIcon*), markup && markup)
      __return_value
    end

    def tooltip_text=(text)
      __return_value = LibGtk.status_icon_set_tooltip_text((to_unsafe as LibGtk::StatusIcon*), text)
      __return_value
    end

    def visible=(visible)
      __return_value = LibGtk.status_icon_set_visible((to_unsafe as LibGtk::StatusIcon*), visible)
      __return_value
    end

    alias ActivateSignal = StatusIcon -> 
    def on_activate(&__block : ActivateSignal)
      __callback = ->(_arg0 : LibGtk::StatusIcon*) {
       __return_value = __block.call(StatusIcon.new(_arg0))
       __return_value
      }
      connect("activate", __callback)
    end

    alias ButtonPressEventSignal = StatusIcon, Gdk::EventButton -> Bool
    def on_button_press_event(&__block : ButtonPressEventSignal)
      __callback = ->(_arg0 : LibGtk::StatusIcon*, _arg1 : LibGtk::LibGdk::EventButton*) {
       __return_value = __block.call(StatusIcon.new(_arg0), Gdk::EventButton.new(_arg1))
       __return_value
      }
      connect("button-press-event", __callback)
    end

    alias ButtonReleaseEventSignal = StatusIcon, Gdk::EventButton -> Bool
    def on_button_release_event(&__block : ButtonReleaseEventSignal)
      __callback = ->(_arg0 : LibGtk::StatusIcon*, _arg1 : LibGtk::LibGdk::EventButton*) {
       __return_value = __block.call(StatusIcon.new(_arg0), Gdk::EventButton.new(_arg1))
       __return_value
      }
      connect("button-release-event", __callback)
    end

    alias PopupMenuSignal = StatusIcon, UInt32, UInt32 -> 
    def on_popup_menu(&__block : PopupMenuSignal)
      __callback = ->(_arg0 : LibGtk::StatusIcon*, _arg1 : LibGtk::UInt32*, _arg2 : LibGtk::UInt32*) {
       __return_value = __block.call(StatusIcon.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("popup-menu", __callback)
    end

    alias QueryTooltipSignal = StatusIcon, Int32, Int32, Bool, Gtk::Tooltip -> Bool
    def on_query_tooltip(&__block : QueryTooltipSignal)
      __callback = ->(_arg0 : LibGtk::StatusIcon*, _arg1 : LibGtk::Int32*, _arg2 : LibGtk::Int32*, _arg3 : LibGtk::Bool*, _arg4 : LibGtk::LibGtk::Tooltip*) {
       __return_value = __block.call(StatusIcon.new(_arg0), _arg1, _arg2, _arg3, Gtk::Tooltip.new(_arg4))
       __return_value
      }
      connect("query-tooltip", __callback)
    end

    alias ScrollEventSignal = StatusIcon, Gdk::EventScroll -> Bool
    def on_scroll_event(&__block : ScrollEventSignal)
      __callback = ->(_arg0 : LibGtk::StatusIcon*, _arg1 : LibGtk::LibGdk::EventScroll*) {
       __return_value = __block.call(StatusIcon.new(_arg0), Gdk::EventScroll.new(_arg1))
       __return_value
      }
      connect("scroll-event", __callback)
    end

    alias SizeChangedSignal = StatusIcon, Int32 -> Bool
    def on_size_changed(&__block : SizeChangedSignal)
      __callback = ->(_arg0 : LibGtk::StatusIcon*, _arg1 : LibGtk::Int32*) {
       __return_value = __block.call(StatusIcon.new(_arg0), _arg1)
       __return_value
      }
      connect("size-changed", __callback)
    end

  end
end

