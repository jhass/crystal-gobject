module Gtk
  class StatusIcon < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::StatusIcon*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::StatusIcon*)
    end

    def embedded
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "embedded", gvalue)
      gvalue.boolean
    end


    def gicon
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gicon", gvalue)
      gvalue
    end

    def has_tooltip
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "has_tooltip", gvalue)
      gvalue.boolean
    end

    def icon_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "icon_name", gvalue)
      gvalue.string
    end

    def orientation
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "orientation", gvalue)
      gvalue.enum
    end

    def pixbuf
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixbuf", gvalue)
      GdkPixbuf::Pixbuf.cast(gvalue.object)
    end

    def screen
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "screen", gvalue)
      Gdk::Screen.cast(gvalue.object)
    end

    def size
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "size", gvalue)
      gvalue
    end

    def stock
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "stock", gvalue)
      gvalue.string
    end

    def storage_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "storage_type", gvalue)
      gvalue.enum
    end

    def title
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "title", gvalue)
      gvalue.string
    end

    def tooltip_markup
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tooltip_markup", gvalue)
      gvalue.string
    end

    def tooltip_text
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tooltip_text", gvalue)
      gvalue.string
    end

    def visible
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.status_icon_new
      cast Gtk::StatusIcon.new(__return_value)
    end

    def self.new_from_file(filename) : self
      __return_value = LibGtk.status_icon_new_from_file(filename.to_unsafe)
      cast Gtk::StatusIcon.new(__return_value)
    end

    def self.new_from_gicon(icon) : self
      __return_value = LibGtk.status_icon_new_from_gicon(icon.to_unsafe.as(LibGio::Icon*))
      cast Gtk::StatusIcon.new(__return_value)
    end

    def self.new_from_icon_name(icon_name) : self
      __return_value = LibGtk.status_icon_new_from_icon_name(icon_name.to_unsafe)
      cast Gtk::StatusIcon.new(__return_value)
    end

    def self.new_from_pixbuf(pixbuf) : self
      __return_value = LibGtk.status_icon_new_from_pixbuf(pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      cast Gtk::StatusIcon.new(__return_value)
    end

    def self.new_from_stock(stock_id) : self
      __return_value = LibGtk.status_icon_new_from_stock(stock_id.to_unsafe)
      cast Gtk::StatusIcon.new(__return_value)
    end

    def self.position_menu(menu, x, y, push_in, user_data)
      LibGtk.status_icon_position_menu(menu.to_unsafe.as(LibGtk::Menu*), x, y, push_in, user_data.to_unsafe.as(LibGtk::StatusIcon*))
      nil
    end

    def geometry(screen, area, orientation : Gtk::Orientation?)
      __return_value = LibGtk.status_icon_get_geometry(@pointer.as(LibGtk::StatusIcon*), screen, area, orientation)
      __return_value
    end

    def gicon
      __return_value = LibGtk.status_icon_get_gicon(@pointer.as(LibGtk::StatusIcon*))
      __return_value if __return_value
    end

    def has_tooltip
      __return_value = LibGtk.status_icon_get_has_tooltip(@pointer.as(LibGtk::StatusIcon*))
      __return_value
    end

    def icon_name
      __return_value = LibGtk.status_icon_get_icon_name(@pointer.as(LibGtk::StatusIcon*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def pixbuf
      __return_value = LibGtk.status_icon_get_pixbuf(@pointer.as(LibGtk::StatusIcon*))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def screen
      __return_value = LibGtk.status_icon_get_screen(@pointer.as(LibGtk::StatusIcon*))
      Gdk::Screen.new(__return_value)
    end

    def size
      __return_value = LibGtk.status_icon_get_size(@pointer.as(LibGtk::StatusIcon*))
      __return_value
    end

    def stock
      __return_value = LibGtk.status_icon_get_stock(@pointer.as(LibGtk::StatusIcon*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def storage_type
      __return_value = LibGtk.status_icon_get_storage_type(@pointer.as(LibGtk::StatusIcon*))
      __return_value
    end

    def title
      __return_value = LibGtk.status_icon_get_title(@pointer.as(LibGtk::StatusIcon*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def tooltip_markup
      __return_value = LibGtk.status_icon_get_tooltip_markup(@pointer.as(LibGtk::StatusIcon*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def tooltip_text
      __return_value = LibGtk.status_icon_get_tooltip_text(@pointer.as(LibGtk::StatusIcon*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def visible
      __return_value = LibGtk.status_icon_get_visible(@pointer.as(LibGtk::StatusIcon*))
      __return_value
    end

    def x11_window_id
      __return_value = LibGtk.status_icon_get_x11_window_id(@pointer.as(LibGtk::StatusIcon*))
      __return_value
    end

    def embedded?
      __return_value = LibGtk.status_icon_is_embedded(@pointer.as(LibGtk::StatusIcon*))
      __return_value
    end

    def from_file=(filename)
      LibGtk.status_icon_set_from_file(@pointer.as(LibGtk::StatusIcon*), filename.to_unsafe)
      nil
    end

    def from_gicon=(icon)
      LibGtk.status_icon_set_from_gicon(@pointer.as(LibGtk::StatusIcon*), icon.to_unsafe.as(LibGio::Icon*))
      nil
    end

    def from_icon_name=(icon_name)
      LibGtk.status_icon_set_from_icon_name(@pointer.as(LibGtk::StatusIcon*), icon_name.to_unsafe)
      nil
    end

    def from_pixbuf=(pixbuf)
      LibGtk.status_icon_set_from_pixbuf(@pointer.as(LibGtk::StatusIcon*), pixbuf ? pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*) : nil)
      nil
    end

    def from_stock=(stock_id)
      LibGtk.status_icon_set_from_stock(@pointer.as(LibGtk::StatusIcon*), stock_id.to_unsafe)
      nil
    end

    def has_tooltip=(has_tooltip)
      LibGtk.status_icon_set_has_tooltip(@pointer.as(LibGtk::StatusIcon*), has_tooltip)
      nil
    end

    def name=(name)
      LibGtk.status_icon_set_name(@pointer.as(LibGtk::StatusIcon*), name.to_unsafe)
      nil
    end

    def screen=(screen)
      LibGtk.status_icon_set_screen(@pointer.as(LibGtk::StatusIcon*), screen.to_unsafe.as(LibGdk::Screen*))
      nil
    end

    def title=(title)
      LibGtk.status_icon_set_title(@pointer.as(LibGtk::StatusIcon*), title.to_unsafe)
      nil
    end

    def tooltip_markup=(markup)
      LibGtk.status_icon_set_tooltip_markup(@pointer.as(LibGtk::StatusIcon*), markup ? markup.to_unsafe : nil)
      nil
    end

    def tooltip_text=(text)
      LibGtk.status_icon_set_tooltip_text(@pointer.as(LibGtk::StatusIcon*), text.to_unsafe)
      nil
    end

    def visible=(visible)
      LibGtk.status_icon_set_visible(@pointer.as(LibGtk::StatusIcon*), visible)
      nil
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
      __callback = ->(_arg0 : LibGtk::StatusIcon*, _arg1 : LibGtk::Int32*, _arg2 : LibGtk::Int32*, _arg3 : LibGtk::Bool*, _arg4 : LibGtk::LibGtk::Tooltip**) {
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

