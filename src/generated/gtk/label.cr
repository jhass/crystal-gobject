require "./misc"

module Gtk
  class Label < Misc
    @pointer : Void*
    def initialize(pointer : LibGtk::Label*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Label*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def angle
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "angle", gvalue)
      gvalue
    end

    def attributes
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "attributes", gvalue)
      Pango::AttrList.cast(gvalue.object)
    end

    def cursor_position
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cursor_position", gvalue)
      gvalue
    end

    def ellipsize
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "ellipsize", gvalue)
      gvalue.enum
    end

    def justify
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "justify", gvalue)
      gvalue.enum
    end

    def label
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "label", gvalue)
      gvalue.string
    end

    def lines
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "lines", gvalue)
      gvalue
    end

    def max_width_chars
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "max_width_chars", gvalue)
      gvalue
    end

    def mnemonic_keyval
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "mnemonic_keyval", gvalue)
      gvalue
    end

    def mnemonic_widget
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "mnemonic_widget", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end


    def selectable
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "selectable", gvalue)
      gvalue.boolean
    end

    def selection_bound
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "selection_bound", gvalue)
      gvalue
    end

    def single_line_mode
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "single_line_mode", gvalue)
      gvalue.boolean
    end

    def track_visited_links
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "track_visited_links", gvalue)
      gvalue.boolean
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

    def width_chars
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "width_chars", gvalue)
      gvalue
    end

    def wrap
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "wrap", gvalue)
      gvalue.boolean
    end

    def wrap_mode
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "wrap_mode", gvalue)
      gvalue.enum
    end

    def xalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "xalign", gvalue)
      gvalue
    end

    def yalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "yalign", gvalue)
      gvalue
    end

    def self.new(str) : self
      __return_value = LibGtk.label_new(str ? str.to_unsafe : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic(str) : self
      __return_value = LibGtk.label_new_with_mnemonic(str ? str.to_unsafe : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def angle
      __return_value = LibGtk.label_get_angle(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def attributes
      __return_value = LibGtk.label_get_attributes(@pointer.as(LibGtk::Label*))
      Pango::AttrList.new(__return_value) if __return_value
    end

    def current_uri
      __return_value = LibGtk.label_get_current_uri(@pointer.as(LibGtk::Label*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def ellipsize
      __return_value = LibGtk.label_get_ellipsize(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def justify
      __return_value = LibGtk.label_get_justify(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def label
      __return_value = LibGtk.label_get_label(@pointer.as(LibGtk::Label*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def layout
      __return_value = LibGtk.label_get_layout(@pointer.as(LibGtk::Label*))
      Pango::Layout.new(__return_value)
    end

    def layout_offsets(x, y)
      LibGtk.label_get_layout_offsets(@pointer.as(LibGtk::Label*), x, y)
      nil
    end

    def line_wrap
      __return_value = LibGtk.label_get_line_wrap(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def line_wrap_mode
      __return_value = LibGtk.label_get_line_wrap_mode(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def lines
      __return_value = LibGtk.label_get_lines(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def max_width_chars
      __return_value = LibGtk.label_get_max_width_chars(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def mnemonic_keyval
      __return_value = LibGtk.label_get_mnemonic_keyval(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def mnemonic_widget
      __return_value = LibGtk.label_get_mnemonic_widget(@pointer.as(LibGtk::Label*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def selectable
      __return_value = LibGtk.label_get_selectable(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def selection_bounds(start, _end)
      __return_value = LibGtk.label_get_selection_bounds(@pointer.as(LibGtk::Label*), start, _end)
      __return_value
    end

    def single_line_mode
      __return_value = LibGtk.label_get_single_line_mode(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def text
      __return_value = LibGtk.label_get_text(@pointer.as(LibGtk::Label*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def track_visited_links
      __return_value = LibGtk.label_get_track_visited_links(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def use_markup
      __return_value = LibGtk.label_get_use_markup(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def use_underline
      __return_value = LibGtk.label_get_use_underline(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def width_chars
      __return_value = LibGtk.label_get_width_chars(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def xalign
      __return_value = LibGtk.label_get_xalign(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def yalign
      __return_value = LibGtk.label_get_yalign(@pointer.as(LibGtk::Label*))
      __return_value
    end

    def select_region(start_offset, end_offset)
      LibGtk.label_select_region(@pointer.as(LibGtk::Label*), Int32.new(start_offset), Int32.new(end_offset))
      nil
    end

    def angle=(angle)
      LibGtk.label_set_angle(@pointer.as(LibGtk::Label*), Float64.new(angle))
      nil
    end

    def attributes=(attrs)
      LibGtk.label_set_attributes(@pointer.as(LibGtk::Label*), attrs ? attrs.to_unsafe.as(LibPango::AttrList*) : nil)
      nil
    end

    def ellipsize=(mode : Pango::EllipsizeMode)
      LibGtk.label_set_ellipsize(@pointer.as(LibGtk::Label*), mode)
      nil
    end

    def justify=(jtype : Gtk::Justification)
      LibGtk.label_set_justify(@pointer.as(LibGtk::Label*), jtype)
      nil
    end

    def label=(str)
      LibGtk.label_set_label(@pointer.as(LibGtk::Label*), str.to_unsafe)
      nil
    end

    def line_wrap=(wrap)
      LibGtk.label_set_line_wrap(@pointer.as(LibGtk::Label*), wrap)
      nil
    end

    def line_wrap_mode=(wrap_mode : Pango::WrapMode)
      LibGtk.label_set_line_wrap_mode(@pointer.as(LibGtk::Label*), wrap_mode)
      nil
    end

    def lines=(lines)
      LibGtk.label_set_lines(@pointer.as(LibGtk::Label*), Int32.new(lines))
      nil
    end

    def markup=(str)
      LibGtk.label_set_markup(@pointer.as(LibGtk::Label*), str.to_unsafe)
      nil
    end

    def markup_with_mnemonic=(str)
      LibGtk.label_set_markup_with_mnemonic(@pointer.as(LibGtk::Label*), str.to_unsafe)
      nil
    end

    def max_width_chars=(n_chars)
      LibGtk.label_set_max_width_chars(@pointer.as(LibGtk::Label*), Int32.new(n_chars))
      nil
    end

    def mnemonic_widget=(widget)
      LibGtk.label_set_mnemonic_widget(@pointer.as(LibGtk::Label*), widget ? widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def pattern=(pattern)
      LibGtk.label_set_pattern(@pointer.as(LibGtk::Label*), pattern.to_unsafe)
      nil
    end

    def selectable=(setting)
      LibGtk.label_set_selectable(@pointer.as(LibGtk::Label*), setting)
      nil
    end

    def single_line_mode=(single_line_mode)
      LibGtk.label_set_single_line_mode(@pointer.as(LibGtk::Label*), single_line_mode)
      nil
    end

    def text=(str)
      LibGtk.label_set_text(@pointer.as(LibGtk::Label*), str.to_unsafe)
      nil
    end

    def text_with_mnemonic=(str)
      LibGtk.label_set_text_with_mnemonic(@pointer.as(LibGtk::Label*), str.to_unsafe)
      nil
    end

    def track_visited_links=(track_links)
      LibGtk.label_set_track_visited_links(@pointer.as(LibGtk::Label*), track_links)
      nil
    end

    def use_markup=(setting)
      LibGtk.label_set_use_markup(@pointer.as(LibGtk::Label*), setting)
      nil
    end

    def use_underline=(setting)
      LibGtk.label_set_use_underline(@pointer.as(LibGtk::Label*), setting)
      nil
    end

    def width_chars=(n_chars)
      LibGtk.label_set_width_chars(@pointer.as(LibGtk::Label*), Int32.new(n_chars))
      nil
    end

    def xalign=(xalign)
      LibGtk.label_set_xalign(@pointer.as(LibGtk::Label*), Float32.new(xalign))
      nil
    end

    def yalign=(yalign)
      LibGtk.label_set_yalign(@pointer.as(LibGtk::Label*), Float32.new(yalign))
      nil
    end

    alias ActivateCurrentLinkSignal = Label ->
    def on_activate_current_link(&__block : ActivateCurrentLinkSignal)
      __callback = ->(_arg0 : LibGtk::Label*) {
       __return_value = __block.call(Label.new(_arg0))
       __return_value
      }
      connect("activate-current-link", __callback)
    end

    alias ActivateLinkSignal = Label, String -> Bool
    def on_activate_link(&__block : ActivateLinkSignal)
      __callback = ->(_arg0 : LibGtk::Label*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(Label.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("activate-link", __callback)
    end

    alias CopyClipboardSignal = Label ->
    def on_copy_clipboard(&__block : CopyClipboardSignal)
      __callback = ->(_arg0 : LibGtk::Label*) {
       __return_value = __block.call(Label.new(_arg0))
       __return_value
      }
      connect("copy-clipboard", __callback)
    end

    alias MoveCursorSignal = Label, Gtk::MovementStep, Int32, Bool ->
    def on_move_cursor(&__block : MoveCursorSignal)
      __callback = ->(_arg0 : LibGtk::Label*, _arg1 : LibGtk::LibGtk::MovementStep*, _arg2 : LibGtk::Int32*, _arg3 : LibGtk::Bool*) {
       __return_value = __block.call(Label.new(_arg0), _arg1, _arg2, _arg3)
       __return_value
      }
      connect("move-cursor", __callback)
    end

    alias PopulatePopupSignal = Label, Gtk::Menu ->
    def on_populate_popup(&__block : PopulatePopupSignal)
      __callback = ->(_arg0 : LibGtk::Label*, _arg1 : LibGtk::LibGtk::Menu**) {
       __return_value = __block.call(Label.new(_arg0), Gtk::Menu.new(_arg1))
       __return_value
      }
      connect("populate-popup", __callback)
    end

  end
end

