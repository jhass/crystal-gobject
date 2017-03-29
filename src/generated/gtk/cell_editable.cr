module Gtk
  module CellEditable
    def editing_done
      __return_value = LibGtk.cell_editable_editing_done(to_unsafe.as(LibGtk::CellEditable*))
      __return_value
    end

    def remove_widget
      __return_value = LibGtk.cell_editable_remove_widget(to_unsafe.as(LibGtk::CellEditable*))
      __return_value
    end

    def start_editing(event)
      __return_value = LibGtk.cell_editable_start_editing(to_unsafe.as(LibGtk::CellEditable*), event ? event.to_unsafe.as(LibGdk::Event*) : nil)
      __return_value
    end

    alias EditingDoneSignal = CellEditable ->
    def on_editing_done(&__block : EditingDoneSignal)
      __callback = ->(_arg0 : LibGtk::CellEditable*) {
       __return_value = __block.call(CellEditable.new(_arg0))
       __return_value
      }
      connect("editing-done", __callback)
    end

    alias RemoveWidgetSignal = CellEditable ->
    def on_remove_widget(&__block : RemoveWidgetSignal)
      __callback = ->(_arg0 : LibGtk::CellEditable*) {
       __return_value = __block.call(CellEditable.new(_arg0))
       __return_value
      }
      connect("remove-widget", __callback)
    end

  end
end

