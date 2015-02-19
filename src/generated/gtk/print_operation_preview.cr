module Gtk
  module PrintOperationPreview
    def end_preview
      __return_value = LibGtk.print_operation_preview_end_preview((to_unsafe as LibGtk::PrintOperationPreview*))
      __return_value
    end

    def is_selected(page_nr)
      __return_value = LibGtk.print_operation_preview_is_selected((to_unsafe as LibGtk::PrintOperationPreview*), Int32.cast(page_nr))
      __return_value
    end

    def render_page(page_nr)
      __return_value = LibGtk.print_operation_preview_render_page((to_unsafe as LibGtk::PrintOperationPreview*), Int32.cast(page_nr))
      __return_value
    end

  end
end

