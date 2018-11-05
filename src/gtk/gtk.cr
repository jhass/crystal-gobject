require "signal"
require "../g_object"
require "../gdk"
require "../generated/lib_gtk"
require "../generated/gtk/text_direction"
require "../generated/gtk/selection_data"
require "../generated/gtk/drag_result"
require "../generated/gtk/direction_type"
require "../generated/gtk/tooltip"
require "../generated/gtk/widget_help_type"
require "../generated/gtk/state_type"
require "../generated/gtk/state_flags"
require "../generated/gtk/style"
require "../generated/gtk/movement_step"
require "../generated/gtk/menu_direction_type"
require "../generated/gtk/scroll_type"
require "../generated/gtk/menu"
require "../generated/gtk/cell_editable"
require "../generated/gtk/cell_renderer"
require "../generated/gtk/tree_path"
require "../generated/gtk/tree_iter"
require "../generated/gtk/tree_model"
require "../generated/gtk/css_section"
require "../generated/gtk/entry_icon_position"
require "../generated/gtk/file_chooser_confirmation"
require "../generated/gtk/flow_box_child"
require "../generated/gtk/pan_direction"
require "../generated/gtk/list_box_row"
require "../generated/gtk/notebook_tab"
require "../generated/gtk/position_type"
require "../generated/gtk/print_operation_result"
require "../generated/gtk/print_context"
require "../generated/gtk/page_setup"
require "../generated/gtk/print_operation_preview"
require "../generated/gtk/print_settings"
require "../generated/gtk/text_iter"
require "../generated/gtk/text_child_anchor"
require "../generated/gtk/text_tag"
require "../generated/gtk/text_mark"
require "../generated/gtk/toolbar_style"
require "../generated/gtk/tree_view_column"
require "../generated/gtk"

module Gtk
  class Window
    def self.new : self
      new LibGtk::WindowType::TOPLEVEL
    end
  end

  class Builder
    def connect_signals
      connect_signals nil
    end

    def [](id)
      object(id).not_nil!
    end

    def []?(id)
      object(id)
    end
  end

  class CssProvider
    def load_from_data(string : String)
      load_from_data(string, string.bytesize)
    end
  end
end