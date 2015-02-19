module Gtk
  module ToolShell
    def ellipsize_mode
      __return_value = LibGtk.tool_shell_get_ellipsize_mode((to_unsafe as LibGtk::ToolShell*))
      __return_value
    end

    def icon_size
      __return_value = LibGtk.tool_shell_get_icon_size((to_unsafe as LibGtk::ToolShell*))
      __return_value
    end

    def orientation
      __return_value = LibGtk.tool_shell_get_orientation((to_unsafe as LibGtk::ToolShell*))
      __return_value
    end

    def relief_style
      __return_value = LibGtk.tool_shell_get_relief_style((to_unsafe as LibGtk::ToolShell*))
      __return_value
    end

    def style
      __return_value = LibGtk.tool_shell_get_style((to_unsafe as LibGtk::ToolShell*))
      __return_value
    end

    def text_alignment
      __return_value = LibGtk.tool_shell_get_text_alignment((to_unsafe as LibGtk::ToolShell*))
      __return_value
    end

    def text_orientation
      __return_value = LibGtk.tool_shell_get_text_orientation((to_unsafe as LibGtk::ToolShell*))
      __return_value
    end

    def text_size_group
      __return_value = LibGtk.tool_shell_get_text_size_group((to_unsafe as LibGtk::ToolShell*))
      Gtk::SizeGroup.new(__return_value)
    end

    def rebuild_menu
      __return_value = LibGtk.tool_shell_rebuild_menu((to_unsafe as LibGtk::ToolShell*))
      __return_value
    end

  end
end

