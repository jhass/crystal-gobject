module Gtk
  module FileChooser
    def add_filter(filter)
      __return_value = LibGtk.file_chooser_add_filter((to_unsafe as LibGtk::FileChooser*), (filter.to_unsafe as LibGtk::FileFilter*))
      __return_value
    end

    def add_shortcut_folder(folder)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.file_chooser_add_shortcut_folder((to_unsafe as LibGtk::FileChooser*), folder, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_shortcut_folder_uri(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.file_chooser_add_shortcut_folder_uri((to_unsafe as LibGtk::FileChooser*), uri, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def action
      __return_value = LibGtk.file_chooser_get_action((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def create_folders
      __return_value = LibGtk.file_chooser_get_create_folders((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def current_folder
      __return_value = LibGtk.file_chooser_get_current_folder((to_unsafe as LibGtk::FileChooser*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def current_folder_file
      __return_value = LibGtk.file_chooser_get_current_folder_file((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def current_folder_uri
      __return_value = LibGtk.file_chooser_get_current_folder_uri((to_unsafe as LibGtk::FileChooser*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def current_name
      __return_value = LibGtk.file_chooser_get_current_name((to_unsafe as LibGtk::FileChooser*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def do_overwrite_confirmation
      __return_value = LibGtk.file_chooser_get_do_overwrite_confirmation((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def extra_widget
      __return_value = LibGtk.file_chooser_get_extra_widget((to_unsafe as LibGtk::FileChooser*))
      Gtk::Widget.new(__return_value)
    end

    def file
      __return_value = LibGtk.file_chooser_get_file((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def filename
      __return_value = LibGtk.file_chooser_get_filename((to_unsafe as LibGtk::FileChooser*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def filenames
      __return_value = LibGtk.file_chooser_get_filenames((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def files
      __return_value = LibGtk.file_chooser_get_files((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def filter
      __return_value = LibGtk.file_chooser_get_filter((to_unsafe as LibGtk::FileChooser*))
      Gtk::FileFilter.new(__return_value)
    end

    def local_only
      __return_value = LibGtk.file_chooser_get_local_only((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def preview_file
      __return_value = LibGtk.file_chooser_get_preview_file((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def preview_filename
      __return_value = LibGtk.file_chooser_get_preview_filename((to_unsafe as LibGtk::FileChooser*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def preview_uri
      __return_value = LibGtk.file_chooser_get_preview_uri((to_unsafe as LibGtk::FileChooser*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def preview_widget
      __return_value = LibGtk.file_chooser_get_preview_widget((to_unsafe as LibGtk::FileChooser*))
      Gtk::Widget.new(__return_value)
    end

    def preview_widget_active
      __return_value = LibGtk.file_chooser_get_preview_widget_active((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def select_multiple
      __return_value = LibGtk.file_chooser_get_select_multiple((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def show_hidden
      __return_value = LibGtk.file_chooser_get_show_hidden((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def uri
      __return_value = LibGtk.file_chooser_get_uri((to_unsafe as LibGtk::FileChooser*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def uris
      __return_value = LibGtk.file_chooser_get_uris((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def use_preview_label
      __return_value = LibGtk.file_chooser_get_use_preview_label((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def list_filters
      __return_value = LibGtk.file_chooser_list_filters((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def list_shortcut_folder_uris
      __return_value = LibGtk.file_chooser_list_shortcut_folder_uris((to_unsafe as LibGtk::FileChooser*))
      __return_value if __return_value
    end

    def list_shortcut_folders
      __return_value = LibGtk.file_chooser_list_shortcut_folders((to_unsafe as LibGtk::FileChooser*))
      __return_value if __return_value
    end

    def remove_filter(filter)
      __return_value = LibGtk.file_chooser_remove_filter((to_unsafe as LibGtk::FileChooser*), (filter.to_unsafe as LibGtk::FileFilter*))
      __return_value
    end

    def remove_shortcut_folder(folder)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.file_chooser_remove_shortcut_folder((to_unsafe as LibGtk::FileChooser*), folder, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_shortcut_folder_uri(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.file_chooser_remove_shortcut_folder_uri((to_unsafe as LibGtk::FileChooser*), uri, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def select_all
      __return_value = LibGtk.file_chooser_select_all((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def select_file(file)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.file_chooser_select_file((to_unsafe as LibGtk::FileChooser*), (file.to_unsafe as LibGio::File*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def select_filename(filename)
      __return_value = LibGtk.file_chooser_select_filename((to_unsafe as LibGtk::FileChooser*), filename)
      __return_value
    end

    def select_uri(uri)
      __return_value = LibGtk.file_chooser_select_uri((to_unsafe as LibGtk::FileChooser*), uri)
      __return_value
    end

    def action=(action)
      __return_value = LibGtk.file_chooser_set_action((to_unsafe as LibGtk::FileChooser*), action)
      __return_value
    end

    def create_folders=(create_folders)
      __return_value = LibGtk.file_chooser_set_create_folders((to_unsafe as LibGtk::FileChooser*), Bool.cast(create_folders))
      __return_value
    end

    def current_folder=(filename)
      __return_value = LibGtk.file_chooser_set_current_folder((to_unsafe as LibGtk::FileChooser*), filename)
      __return_value
    end

    def set_current_folder_file(file)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.file_chooser_set_current_folder_file((to_unsafe as LibGtk::FileChooser*), (file.to_unsafe as LibGio::File*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def current_folder_uri=(uri)
      __return_value = LibGtk.file_chooser_set_current_folder_uri((to_unsafe as LibGtk::FileChooser*), uri)
      __return_value
    end

    def current_name=(name)
      __return_value = LibGtk.file_chooser_set_current_name((to_unsafe as LibGtk::FileChooser*), name)
      __return_value
    end

    def do_overwrite_confirmation=(do_overwrite_confirmation)
      __return_value = LibGtk.file_chooser_set_do_overwrite_confirmation((to_unsafe as LibGtk::FileChooser*), Bool.cast(do_overwrite_confirmation))
      __return_value
    end

    def extra_widget=(extra_widget)
      __return_value = LibGtk.file_chooser_set_extra_widget((to_unsafe as LibGtk::FileChooser*), (extra_widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def set_file(file)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.file_chooser_set_file((to_unsafe as LibGtk::FileChooser*), (file.to_unsafe as LibGio::File*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def filename=(filename)
      __return_value = LibGtk.file_chooser_set_filename((to_unsafe as LibGtk::FileChooser*), filename)
      __return_value
    end

    def filter=(filter)
      __return_value = LibGtk.file_chooser_set_filter((to_unsafe as LibGtk::FileChooser*), (filter.to_unsafe as LibGtk::FileFilter*))
      __return_value
    end

    def local_only=(local_only)
      __return_value = LibGtk.file_chooser_set_local_only((to_unsafe as LibGtk::FileChooser*), Bool.cast(local_only))
      __return_value
    end

    def preview_widget=(preview_widget)
      __return_value = LibGtk.file_chooser_set_preview_widget((to_unsafe as LibGtk::FileChooser*), (preview_widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def preview_widget_active=(active)
      __return_value = LibGtk.file_chooser_set_preview_widget_active((to_unsafe as LibGtk::FileChooser*), Bool.cast(active))
      __return_value
    end

    def select_multiple=(select_multiple)
      __return_value = LibGtk.file_chooser_set_select_multiple((to_unsafe as LibGtk::FileChooser*), Bool.cast(select_multiple))
      __return_value
    end

    def show_hidden=(show_hidden)
      __return_value = LibGtk.file_chooser_set_show_hidden((to_unsafe as LibGtk::FileChooser*), Bool.cast(show_hidden))
      __return_value
    end

    def uri=(uri)
      __return_value = LibGtk.file_chooser_set_uri((to_unsafe as LibGtk::FileChooser*), uri)
      __return_value
    end

    def use_preview_label=(use_label)
      __return_value = LibGtk.file_chooser_set_use_preview_label((to_unsafe as LibGtk::FileChooser*), Bool.cast(use_label))
      __return_value
    end

    def unselect_all
      __return_value = LibGtk.file_chooser_unselect_all((to_unsafe as LibGtk::FileChooser*))
      __return_value
    end

    def unselect_file(file)
      __return_value = LibGtk.file_chooser_unselect_file((to_unsafe as LibGtk::FileChooser*), (file.to_unsafe as LibGio::File*))
      __return_value
    end

    def unselect_filename(filename)
      __return_value = LibGtk.file_chooser_unselect_filename((to_unsafe as LibGtk::FileChooser*), filename)
      __return_value
    end

    def unselect_uri(uri)
      __return_value = LibGtk.file_chooser_unselect_uri((to_unsafe as LibGtk::FileChooser*), uri)
      __return_value
    end

  end
end

