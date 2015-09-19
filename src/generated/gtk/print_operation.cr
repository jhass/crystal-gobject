module Gtk
  class PrintOperation < GObject::Object
    def initialize @gtk_print_operation
    end

    def to_unsafe
      @gtk_print_operation.not_nil!
    end

    # Implements PrintOperationPreview


















    def self.new_internal
      __return_value = LibGtk.print_operation_new
      Gtk::PrintOperation.new(__return_value)
    end

    def cancel
      __return_value = LibGtk.print_operation_cancel((to_unsafe as LibGtk::PrintOperation*))
      __return_value
    end

    def draw_page_finish
      __return_value = LibGtk.print_operation_draw_page_finish((to_unsafe as LibGtk::PrintOperation*))
      __return_value
    end

    def default_page_setup
      __return_value = LibGtk.print_operation_get_default_page_setup((to_unsafe as LibGtk::PrintOperation*))
      Gtk::PageSetup.new(__return_value)
    end

    def embed_page_setup
      __return_value = LibGtk.print_operation_get_embed_page_setup((to_unsafe as LibGtk::PrintOperation*))
      __return_value
    end

    def error
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.print_operation_get_error((to_unsafe as LibGtk::PrintOperation*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def has_selection
      __return_value = LibGtk.print_operation_get_has_selection((to_unsafe as LibGtk::PrintOperation*))
      __return_value
    end

    def n_pages_to_print
      __return_value = LibGtk.print_operation_get_n_pages_to_print((to_unsafe as LibGtk::PrintOperation*))
      __return_value
    end

    def print_settings
      __return_value = LibGtk.print_operation_get_print_settings((to_unsafe as LibGtk::PrintOperation*))
      Gtk::PrintSettings.new(__return_value)
    end

    def status
      __return_value = LibGtk.print_operation_get_status((to_unsafe as LibGtk::PrintOperation*))
      __return_value
    end

    def status_string
      __return_value = LibGtk.print_operation_get_status_string((to_unsafe as LibGtk::PrintOperation*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def support_selection
      __return_value = LibGtk.print_operation_get_support_selection((to_unsafe as LibGtk::PrintOperation*))
      __return_value
    end

    def is_finished
      __return_value = LibGtk.print_operation_is_finished((to_unsafe as LibGtk::PrintOperation*))
      __return_value
    end

    def run(action, parent)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.print_operation_run((to_unsafe as LibGtk::PrintOperation*), action, parent && (parent.to_unsafe as LibGtk::Window*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def allow_async=(allow_async)
      __return_value = LibGtk.print_operation_set_allow_async((to_unsafe as LibGtk::PrintOperation*), Bool.new(allow_async))
      __return_value
    end

    def current_page=(current_page)
      __return_value = LibGtk.print_operation_set_current_page((to_unsafe as LibGtk::PrintOperation*), Int32.new(current_page))
      __return_value
    end

    def custom_tab_label=(label)
      __return_value = LibGtk.print_operation_set_custom_tab_label((to_unsafe as LibGtk::PrintOperation*), label && label)
      __return_value
    end

    def default_page_setup=(default_page_setup)
      __return_value = LibGtk.print_operation_set_default_page_setup((to_unsafe as LibGtk::PrintOperation*), default_page_setup && (default_page_setup.to_unsafe as LibGtk::PageSetup*))
      __return_value
    end

    def set_defer_drawing
      __return_value = LibGtk.print_operation_set_defer_drawing((to_unsafe as LibGtk::PrintOperation*))
      __return_value
    end

    def embed_page_setup=(embed)
      __return_value = LibGtk.print_operation_set_embed_page_setup((to_unsafe as LibGtk::PrintOperation*), Bool.new(embed))
      __return_value
    end

    def export_filename=(filename)
      __return_value = LibGtk.print_operation_set_export_filename((to_unsafe as LibGtk::PrintOperation*), filename)
      __return_value
    end

    def has_selection=(has_selection)
      __return_value = LibGtk.print_operation_set_has_selection((to_unsafe as LibGtk::PrintOperation*), Bool.new(has_selection))
      __return_value
    end

    def job_name=(job_name)
      __return_value = LibGtk.print_operation_set_job_name((to_unsafe as LibGtk::PrintOperation*), job_name)
      __return_value
    end

    def n_pages=(n_pages)
      __return_value = LibGtk.print_operation_set_n_pages((to_unsafe as LibGtk::PrintOperation*), Int32.new(n_pages))
      __return_value
    end

    def print_settings=(print_settings)
      __return_value = LibGtk.print_operation_set_print_settings((to_unsafe as LibGtk::PrintOperation*), print_settings && (print_settings.to_unsafe as LibGtk::PrintSettings*))
      __return_value
    end

    def show_progress=(show_progress)
      __return_value = LibGtk.print_operation_set_show_progress((to_unsafe as LibGtk::PrintOperation*), Bool.new(show_progress))
      __return_value
    end

    def support_selection=(support_selection)
      __return_value = LibGtk.print_operation_set_support_selection((to_unsafe as LibGtk::PrintOperation*), Bool.new(support_selection))
      __return_value
    end

    def track_print_status=(track_status)
      __return_value = LibGtk.print_operation_set_track_print_status((to_unsafe as LibGtk::PrintOperation*), Bool.new(track_status))
      __return_value
    end

    def unit=(unit)
      __return_value = LibGtk.print_operation_set_unit((to_unsafe as LibGtk::PrintOperation*), unit)
      __return_value
    end

    def use_full_page=(full_page)
      __return_value = LibGtk.print_operation_set_use_full_page((to_unsafe as LibGtk::PrintOperation*), Bool.new(full_page))
      __return_value
    end

  end
end

