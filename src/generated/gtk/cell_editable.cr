module Gtk
  module CellEditable
    def editing_done
      LibGtk.cell_editable_editing_done(@pointer.as(LibGtk::CellEditable*))
      nil
    end

    def remove_widget
      LibGtk.cell_editable_remove_widget(@pointer.as(LibGtk::CellEditable*))
      nil
    end

    def start_editing(event)
      LibGtk.cell_editable_start_editing(@pointer.as(LibGtk::CellEditable*), event ? event.to_unsafe.as(LibGdk::Event*) : nil)
      nil
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

