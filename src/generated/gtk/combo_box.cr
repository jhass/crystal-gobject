require "./bin"

module Gtk
  class ComboBox < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::ComboBox*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ComboBox*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellEditable
    # Implements CellLayout
    def active
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "active", gvalue)
      gvalue
    end

    def active_id
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "active_id", gvalue)
      gvalue.string
    end

    def add_tearoffs
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "add_tearoffs", gvalue)
      gvalue.boolean
    end

    def button_sensitivity
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "button_sensitivity", gvalue)
      gvalue.enum
    end

    def cell_area
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cell_area", gvalue)
      Gtk::CellArea.cast(gvalue.object)
    end

    def column_span_column
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "column_span_column", gvalue)
      gvalue
    end

    def entry_text_column
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "entry_text_column", gvalue)
      gvalue
    end

    def has_entry
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "has_entry", gvalue)
      gvalue.boolean
    end

    def has_frame
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "has_frame", gvalue)
      gvalue.boolean
    end

    def id_column
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "id_column", gvalue)
      gvalue
    end

    def model
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "model", gvalue)
      gvalue
    end

    def popup_fixed_width
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "popup_fixed_width", gvalue)
      gvalue.boolean
    end

    def popup_shown
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "popup_shown", gvalue)
      gvalue.boolean
    end

    def row_span_column
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "row_span_column", gvalue)
      gvalue
    end

    def tearoff_title
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tearoff_title", gvalue)
      gvalue.string
    end

    def wrap_width
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "wrap_width", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.combo_box_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_area(area) : self
      __return_value = LibGtk.combo_box_new_with_area(area.to_unsafe.as(LibGtk::CellArea*))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_area_and_entry(area) : self
      __return_value = LibGtk.combo_box_new_with_area_and_entry(area.to_unsafe.as(LibGtk::CellArea*))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_entry : self
      __return_value = LibGtk.combo_box_new_with_entry
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_model(model) : self
      __return_value = LibGtk.combo_box_new_with_model(model.to_unsafe.as(LibGtk::TreeModel*))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_model_and_entry(model) : self
      __return_value = LibGtk.combo_box_new_with_model_and_entry(model.to_unsafe.as(LibGtk::TreeModel*))
      cast Gtk::Widget.new(__return_value)
    end

    def active
      __return_value = LibGtk.combo_box_get_active(@pointer.as(LibGtk::ComboBox*))
      __return_value
    end

    def active_id
      __return_value = LibGtk.combo_box_get_active_id(@pointer.as(LibGtk::ComboBox*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def active_iter(iter)
      __return_value = LibGtk.combo_box_get_active_iter(@pointer.as(LibGtk::ComboBox*), iter)
      __return_value
    end

    def add_tearoffs
      __return_value = LibGtk.combo_box_get_add_tearoffs(@pointer.as(LibGtk::ComboBox*))
      __return_value
    end

    def button_sensitivity
      __return_value = LibGtk.combo_box_get_button_sensitivity(@pointer.as(LibGtk::ComboBox*))
      __return_value
    end

    def column_span_column
      __return_value = LibGtk.combo_box_get_column_span_column(@pointer.as(LibGtk::ComboBox*))
      __return_value
    end

    def entry_text_column
      __return_value = LibGtk.combo_box_get_entry_text_column(@pointer.as(LibGtk::ComboBox*))
      __return_value
    end

    def focus_on_click
      __return_value = LibGtk.combo_box_get_focus_on_click(@pointer.as(LibGtk::ComboBox*))
      __return_value
    end

    def has_entry
      __return_value = LibGtk.combo_box_get_has_entry(@pointer.as(LibGtk::ComboBox*))
      __return_value
    end

    def id_column
      __return_value = LibGtk.combo_box_get_id_column(@pointer.as(LibGtk::ComboBox*))
      __return_value
    end

    def model
      __return_value = LibGtk.combo_box_get_model(@pointer.as(LibGtk::ComboBox*))
      __return_value
    end

    def popup_accessible
      __return_value = LibGtk.combo_box_get_popup_accessible(@pointer.as(LibGtk::ComboBox*))
      Atk::Object.new(__return_value)
    end

    def popup_fixed_width
      __return_value = LibGtk.combo_box_get_popup_fixed_width(@pointer.as(LibGtk::ComboBox*))
      __return_value
    end

    def row_span_column
      __return_value = LibGtk.combo_box_get_row_span_column(@pointer.as(LibGtk::ComboBox*))
      __return_value
    end

    def title
      __return_value = LibGtk.combo_box_get_title(@pointer.as(LibGtk::ComboBox*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def wrap_width
      __return_value = LibGtk.combo_box_get_wrap_width(@pointer.as(LibGtk::ComboBox*))
      __return_value
    end

    def popdown
      LibGtk.combo_box_popdown(@pointer.as(LibGtk::ComboBox*))
      nil
    end

    def popup
      LibGtk.combo_box_popup(@pointer.as(LibGtk::ComboBox*))
      nil
    end

    def popup_for_device(device)
      LibGtk.combo_box_popup_for_device(@pointer.as(LibGtk::ComboBox*), device.to_unsafe.as(LibGdk::Device*))
      nil
    end

    def active=(index)
      LibGtk.combo_box_set_active(@pointer.as(LibGtk::ComboBox*), Int32.new(index))
      nil
    end

    def active_id=(active_id)
      __return_value = LibGtk.combo_box_set_active_id(@pointer.as(LibGtk::ComboBox*), active_id ? active_id.to_unsafe : nil)
      __return_value
    end

    def active_iter=(iter)
      LibGtk.combo_box_set_active_iter(@pointer.as(LibGtk::ComboBox*), iter ? iter.to_unsafe.as(LibGtk::TreeIter*) : nil)
      nil
    end

    def add_tearoffs=(add_tearoffs)
      LibGtk.combo_box_set_add_tearoffs(@pointer.as(LibGtk::ComboBox*), add_tearoffs)
      nil
    end

    def button_sensitivity=(sensitivity : Gtk::SensitivityType)
      LibGtk.combo_box_set_button_sensitivity(@pointer.as(LibGtk::ComboBox*), sensitivity)
      nil
    end

    def column_span_column=(column_span)
      LibGtk.combo_box_set_column_span_column(@pointer.as(LibGtk::ComboBox*), Int32.new(column_span))
      nil
    end

    def entry_text_column=(text_column)
      LibGtk.combo_box_set_entry_text_column(@pointer.as(LibGtk::ComboBox*), Int32.new(text_column))
      nil
    end

    def focus_on_click=(focus_on_click)
      LibGtk.combo_box_set_focus_on_click(@pointer.as(LibGtk::ComboBox*), focus_on_click)
      nil
    end

    def id_column=(id_column)
      LibGtk.combo_box_set_id_column(@pointer.as(LibGtk::ComboBox*), Int32.new(id_column))
      nil
    end

    def model=(model)
      LibGtk.combo_box_set_model(@pointer.as(LibGtk::ComboBox*), model ? model.to_unsafe.as(LibGtk::TreeModel*) : nil)
      nil
    end

    def popup_fixed_width=(fixed)
      LibGtk.combo_box_set_popup_fixed_width(@pointer.as(LibGtk::ComboBox*), fixed)
      nil
    end

    def set_row_separator_func(func, data, destroy)
      LibGtk.combo_box_set_row_separator_func(@pointer.as(LibGtk::ComboBox*), func, data ? data : nil, destroy ? destroy : nil)
      nil
    end

    def row_span_column=(row_span)
      LibGtk.combo_box_set_row_span_column(@pointer.as(LibGtk::ComboBox*), Int32.new(row_span))
      nil
    end

    def title=(title)
      LibGtk.combo_box_set_title(@pointer.as(LibGtk::ComboBox*), title.to_unsafe)
      nil
    end

    def wrap_width=(width)
      LibGtk.combo_box_set_wrap_width(@pointer.as(LibGtk::ComboBox*), Int32.new(width))
      nil
    end

    alias ChangedSignal = ComboBox ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::ComboBox*) {
       __return_value = __block.call(ComboBox.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

    alias FormatEntryTextSignal = ComboBox, String -> String
    def on_format_entry_text(&__block : FormatEntryTextSignal)
      __callback = ->(_arg0 : LibGtk::ComboBox*, _arg1 : UInt8**) {
       __return_value = __block.call(ComboBox.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value.to_unsafe
      }
      connect("format-entry-text", __callback)
    end

    alias MoveActiveSignal = ComboBox, Gtk::ScrollType ->
    def on_move_active(&__block : MoveActiveSignal)
      __callback = ->(_arg0 : LibGtk::ComboBox*, _arg1 : LibGtk::ScrollType*) {
       __return_value = __block.call(ComboBox.new(_arg0), _arg1)
       __return_value
      }
      connect("move-active", __callback)
    end

    alias PopdownSignal = ComboBox -> Bool
    def on_popdown(&__block : PopdownSignal)
      __callback = ->(_arg0 : LibGtk::ComboBox*) {
       __return_value = __block.call(ComboBox.new(_arg0))
       __return_value
      }
      connect("popdown", __callback)
    end

    alias PopupSignal = ComboBox ->
    def on_popup(&__block : PopupSignal)
      __callback = ->(_arg0 : LibGtk::ComboBox*) {
       __return_value = __block.call(ComboBox.new(_arg0))
       __return_value
      }
      connect("popup", __callback)
    end

  end
end

