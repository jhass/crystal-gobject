module Gtk
  class PrintOperation < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::PrintOperation*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PrintOperation*)
    end

    # Implements PrintOperationPreview
    def allow_async
      __return_value = LibGtk.print_operation_get_allow_async(to_unsafe.as(LibGtk::PrintOperation*))
      __return_value
    end

    def current_page
      __return_value = LibGtk.print_operation_get_current_page(to_unsafe.as(LibGtk::PrintOperation*))
      __return_value
    end

    def custom_tab_label
      __return_value = LibGtk.print_operation_get_custom_tab_label(to_unsafe.as(LibGtk::PrintOperation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def default_page_setup
      __return_value = LibGtk.print_operation_get_default_page_setup(to_unsafe.as(LibGtk::PrintOperation*))
      Gtk::PageSetup.new(__return_value)
    end

    def embed_page_setup
      __return_value = LibGtk.print_operation_get_embed_page_setup(to_unsafe.as(LibGtk::PrintOperation*))
      __return_value
    end

    def export_filename
      __return_value = LibGtk.print_operation_get_export_filename(to_unsafe.as(LibGtk::PrintOperation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def has_selection
      __return_value = LibGtk.print_operation_get_has_selection(to_unsafe.as(LibGtk::PrintOperation*))
      __return_value
    end

    def job_name
      __return_value = LibGtk.print_operation_get_job_name(to_unsafe.as(LibGtk::PrintOperation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def n_pages
      __return_value = LibGtk.print_operation_get_n_pages(to_unsafe.as(LibGtk::PrintOperation*))
      __return_value
    end

    def n_pages_to_print
      __return_value = LibGtk.print_operation_get_n_pages_to_print(to_unsafe.as(LibGtk::PrintOperation*))
      __return_value
    end

    def print_settings
      __return_value = LibGtk.print_operation_get_print_settings(to_unsafe.as(LibGtk::PrintOperation*))
      Gtk::PrintSettings.new(__return_value)
    end

    def show_progress
      __return_value = LibGtk.print_operation_get_show_progress(to_unsafe.as(LibGtk::PrintOperation*))
      __return_value
    end

    def status
      __return_value = LibGtk.print_operation_get_status(to_unsafe.as(LibGtk::PrintOperation*))
      __return_value
    end

    def status_string
      __return_value = LibGtk.print_operation_get_status_string(to_unsafe.as(LibGtk::PrintOperation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def support_selection
      __return_value = LibGtk.print_operation_get_support_selection(to_unsafe.as(LibGtk::PrintOperation*))
      __return_value
    end

    def track_print_status
      __return_value = LibGtk.print_operation_get_track_print_status(to_unsafe.as(LibGtk::PrintOperation*))
      __return_value
    end

    def unit
      __return_value = LibGtk.print_operation_get_unit(to_unsafe.as(LibGtk::PrintOperation*))
      __return_value
    end

    def use_full_page
      __return_value = LibGtk.print_operation_get_use_full_page(to_unsafe.as(LibGtk::PrintOperation*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.print_operation_new
      cast Gtk::PrintOperation.new(__return_value)
    end

    def cancel
      LibGtk.print_operation_cancel(@pointer.as(LibGtk::PrintOperation*))
      nil
    end

    def draw_page_finish
      LibGtk.print_operation_draw_page_finish(@pointer.as(LibGtk::PrintOperation*))
      nil
    end

    def default_page_setup
      __return_value = LibGtk.print_operation_get_default_page_setup(@pointer.as(LibGtk::PrintOperation*))
      Gtk::PageSetup.new(__return_value)
    end

    def embed_page_setup
      __return_value = LibGtk.print_operation_get_embed_page_setup(@pointer.as(LibGtk::PrintOperation*))
      __return_value
    end

    def error
      __error = Pointer(LibGLib::Error).null
      LibGtk.print_operation_get_error(@pointer.as(LibGtk::PrintOperation*), pointerof(__error))
      GLib::Error.assert __error
      nil
    end

    def has_selection
      __return_value = LibGtk.print_operation_get_has_selection(@pointer.as(LibGtk::PrintOperation*))
      __return_value
    end

    def n_pages_to_print
      __return_value = LibGtk.print_operation_get_n_pages_to_print(@pointer.as(LibGtk::PrintOperation*))
      __return_value
    end

    def print_settings
      __return_value = LibGtk.print_operation_get_print_settings(@pointer.as(LibGtk::PrintOperation*))
      Gtk::PrintSettings.new(__return_value)
    end

    def status
      __return_value = LibGtk.print_operation_get_status(@pointer.as(LibGtk::PrintOperation*))
      __return_value
    end

    def status_string
      __return_value = LibGtk.print_operation_get_status_string(@pointer.as(LibGtk::PrintOperation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def support_selection
      __return_value = LibGtk.print_operation_get_support_selection(@pointer.as(LibGtk::PrintOperation*))
      __return_value
    end

    def finished?
      __return_value = LibGtk.print_operation_is_finished(@pointer.as(LibGtk::PrintOperation*))
      __return_value
    end

    def run(action : Gtk::PrintOperationAction, parent)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.print_operation_run(@pointer.as(LibGtk::PrintOperation*), action, parent ? parent.to_unsafe.as(LibGtk::Window*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def allow_async=(allow_async)
      LibGtk.print_operation_set_allow_async(@pointer.as(LibGtk::PrintOperation*), allow_async)
      nil
    end

    def current_page=(current_page)
      LibGtk.print_operation_set_current_page(@pointer.as(LibGtk::PrintOperation*), Int32.new(current_page))
      nil
    end

    def custom_tab_label=(label)
      LibGtk.print_operation_set_custom_tab_label(@pointer.as(LibGtk::PrintOperation*), label ? label.to_unsafe : nil)
      nil
    end

    def default_page_setup=(default_page_setup)
      LibGtk.print_operation_set_default_page_setup(@pointer.as(LibGtk::PrintOperation*), default_page_setup ? default_page_setup.to_unsafe.as(LibGtk::PageSetup*) : nil)
      nil
    end

    def set_defer_drawing
      LibGtk.print_operation_set_defer_drawing(@pointer.as(LibGtk::PrintOperation*))
      nil
    end

    def embed_page_setup=(embed)
      LibGtk.print_operation_set_embed_page_setup(@pointer.as(LibGtk::PrintOperation*), embed)
      nil
    end

    def export_filename=(filename)
      LibGtk.print_operation_set_export_filename(@pointer.as(LibGtk::PrintOperation*), filename.to_unsafe)
      nil
    end

    def has_selection=(has_selection)
      LibGtk.print_operation_set_has_selection(@pointer.as(LibGtk::PrintOperation*), has_selection)
      nil
    end

    def job_name=(job_name)
      LibGtk.print_operation_set_job_name(@pointer.as(LibGtk::PrintOperation*), job_name.to_unsafe)
      nil
    end

    def n_pages=(n_pages)
      LibGtk.print_operation_set_n_pages(@pointer.as(LibGtk::PrintOperation*), Int32.new(n_pages))
      nil
    end

    def print_settings=(print_settings)
      LibGtk.print_operation_set_print_settings(@pointer.as(LibGtk::PrintOperation*), print_settings ? print_settings.to_unsafe.as(LibGtk::PrintSettings*) : nil)
      nil
    end

    def show_progress=(show_progress)
      LibGtk.print_operation_set_show_progress(@pointer.as(LibGtk::PrintOperation*), show_progress)
      nil
    end

    def support_selection=(support_selection)
      LibGtk.print_operation_set_support_selection(@pointer.as(LibGtk::PrintOperation*), support_selection)
      nil
    end

    def track_print_status=(track_status)
      LibGtk.print_operation_set_track_print_status(@pointer.as(LibGtk::PrintOperation*), track_status)
      nil
    end

    def unit=(unit : Gtk::Unit)
      LibGtk.print_operation_set_unit(@pointer.as(LibGtk::PrintOperation*), unit)
      nil
    end

    def use_full_page=(full_page)
      LibGtk.print_operation_set_use_full_page(@pointer.as(LibGtk::PrintOperation*), full_page)
      nil
    end

    alias BeginPrintSignal = PrintOperation, Gtk::PrintContext ->
    def on_begin_print(&__block : BeginPrintSignal)
      __callback = ->(_arg0 : LibGtk::PrintOperation*, _arg1 : LibGtk::LibGtk::PrintContext*) {
       __return_value = __block.call(PrintOperation.new(_arg0), Gtk::PrintContext.new(_arg1))
       __return_value
      }
      connect("begin-print", __callback)
    end

    alias CreateCustomWidgetSignal = PrintOperation -> GObject::Object
    def on_create_custom_widget(&__block : CreateCustomWidgetSignal)
      __callback = ->(_arg0 : LibGtk::PrintOperation*) {
       __return_value = __block.call(PrintOperation.new(_arg0))
       __return_value
      }
      connect("create-custom-widget", __callback)
    end

    alias CustomWidgetApplySignal = PrintOperation, Gtk::Widget ->
    def on_custom_widget_apply(&__block : CustomWidgetApplySignal)
      __callback = ->(_arg0 : LibGtk::PrintOperation*, _arg1 : LibGtk::LibGtk::Widget*) {
       __return_value = __block.call(PrintOperation.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("custom-widget-apply", __callback)
    end

    alias DoneSignal = PrintOperation, Gtk::PrintOperationResult ->
    def on_done(&__block : DoneSignal)
      __callback = ->(_arg0 : LibGtk::PrintOperation*, _arg1 : LibGtk::LibGtk::PrintOperationResult*) {
       __return_value = __block.call(PrintOperation.new(_arg0), _arg1)
       __return_value
      }
      connect("done", __callback)
    end

    alias DrawPageSignal = PrintOperation, Gtk::PrintContext, Int32 ->
    def on_draw_page(&__block : DrawPageSignal)
      __callback = ->(_arg0 : LibGtk::PrintOperation*, _arg1 : LibGtk::LibGtk::PrintContext*, _arg2 : LibGtk::Int32*) {
       __return_value = __block.call(PrintOperation.new(_arg0), Gtk::PrintContext.new(_arg1), _arg2)
       __return_value
      }
      connect("draw-page", __callback)
    end

    alias EndPrintSignal = PrintOperation, Gtk::PrintContext ->
    def on_end_print(&__block : EndPrintSignal)
      __callback = ->(_arg0 : LibGtk::PrintOperation*, _arg1 : LibGtk::LibGtk::PrintContext*) {
       __return_value = __block.call(PrintOperation.new(_arg0), Gtk::PrintContext.new(_arg1))
       __return_value
      }
      connect("end-print", __callback)
    end

    alias PaginateSignal = PrintOperation, Gtk::PrintContext -> Bool
    def on_paginate(&__block : PaginateSignal)
      __callback = ->(_arg0 : LibGtk::PrintOperation*, _arg1 : LibGtk::LibGtk::PrintContext*) {
       __return_value = __block.call(PrintOperation.new(_arg0), Gtk::PrintContext.new(_arg1))
       __return_value
      }
      connect("paginate", __callback)
    end

    alias PreviewSignal = PrintOperation, Gtk::PrintOperationPreview, Gtk::PrintContext, Gtk::Window -> Bool
    def on_preview(&__block : PreviewSignal)
      __callback = ->(_arg0 : LibGtk::PrintOperation*, _arg1 : LibGtk::LibGtk::PrintOperationPreview*, _arg2 : LibGtk::LibGtk::PrintContext*, _arg3 : LibGtk::LibGtk::Window*) {
       __return_value = __block.call(PrintOperation.new(_arg0), _arg1, Gtk::PrintContext.new(_arg2), Gtk::Window.new(_arg3))
       __return_value
      }
      connect("preview", __callback)
    end

    alias RequestPageSetupSignal = PrintOperation, Gtk::PrintContext, Int32, Gtk::PageSetup ->
    def on_request_page_setup(&__block : RequestPageSetupSignal)
      __callback = ->(_arg0 : LibGtk::PrintOperation*, _arg1 : LibGtk::LibGtk::PrintContext*, _arg2 : LibGtk::Int32*, _arg3 : LibGtk::LibGtk::PageSetup*) {
       __return_value = __block.call(PrintOperation.new(_arg0), Gtk::PrintContext.new(_arg1), _arg2, Gtk::PageSetup.new(_arg3))
       __return_value
      }
      connect("request-page-setup", __callback)
    end

    alias StatusChangedSignal = PrintOperation ->
    def on_status_changed(&__block : StatusChangedSignal)
      __callback = ->(_arg0 : LibGtk::PrintOperation*) {
       __return_value = __block.call(PrintOperation.new(_arg0))
       __return_value
      }
      connect("status-changed", __callback)
    end

    alias UpdateCustomWidgetSignal = PrintOperation, Gtk::Widget, Gtk::PageSetup, Gtk::PrintSettings ->
    def on_update_custom_widget(&__block : UpdateCustomWidgetSignal)
      __callback = ->(_arg0 : LibGtk::PrintOperation*, _arg1 : LibGtk::LibGtk::Widget*, _arg2 : LibGtk::LibGtk::PageSetup*, _arg3 : LibGtk::LibGtk::PrintSettings*) {
       __return_value = __block.call(PrintOperation.new(_arg0), Gtk::Widget.new(_arg1), Gtk::PageSetup.new(_arg2), Gtk::PrintSettings.new(_arg3))
       __return_value
      }
      connect("update-custom-widget", __callback)
    end

  end
end

