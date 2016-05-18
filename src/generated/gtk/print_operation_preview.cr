module Gtk
  module PrintOperationPreview
    def end_preview
      __return_value = LibGtk.print_operation_preview_end_preview(to_unsafe.as(LibGtk::PrintOperationPreview*))
      __return_value
    end

    def selected?(page_nr)
      __return_value = LibGtk.print_operation_preview_is_selected(to_unsafe.as(LibGtk::PrintOperationPreview*), Int32.new(page_nr))
      __return_value
    end

    def render_page(page_nr)
      __return_value = LibGtk.print_operation_preview_render_page(to_unsafe.as(LibGtk::PrintOperationPreview*), Int32.new(page_nr))
      __return_value
    end

    alias GotPageSizeSignal = PrintOperationPreview, Gtk::PrintContext, Gtk::PageSetup -> 
    def on_got_page_size(&__block : GotPageSizeSignal)
      __callback = ->(_arg0 : LibGtk::PrintOperationPreview*, _arg1 : LibGtk::LibGtk::PrintContext*, _arg2 : LibGtk::LibGtk::PageSetup*) {
       __return_value = __block.call(PrintOperationPreview.new(_arg0), Gtk::PrintContext.new(_arg1), Gtk::PageSetup.new(_arg2))
       __return_value
      }
      connect("got-page-size", __callback)
    end

    alias ReadySignal = PrintOperationPreview, Gtk::PrintContext -> 
    def on_ready(&__block : ReadySignal)
      __callback = ->(_arg0 : LibGtk::PrintOperationPreview*, _arg1 : LibGtk::LibGtk::PrintContext*) {
       __return_value = __block.call(PrintOperationPreview.new(_arg0), Gtk::PrintContext.new(_arg1))
       __return_value
      }
      connect("ready", __callback)
    end

  end
end

