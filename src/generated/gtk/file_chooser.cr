module Gtk
  module FileChooser
    def add_choice(id, label, options, option_labels)
      LibGtk.file_chooser_add_choice(to_unsafe.as(LibGtk::FileChooser*), id.to_unsafe, label.to_unsafe, options.to_unsafe, option_labels.to_unsafe)
      nil
    end

    def add_filter(filter)
      LibGtk.file_chooser_add_filter(to_unsafe.as(LibGtk::FileChooser*), filter.to_unsafe.as(LibGtk::FileFilter*))
      nil
    end

    def add_shortcut_folder(folder)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.file_chooser_add_shortcut_folder(to_unsafe.as(LibGtk::FileChooser*), folder.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_shortcut_folder_uri(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.file_chooser_add_shortcut_folder_uri(to_unsafe.as(LibGtk::FileChooser*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def action
      __return_value = LibGtk.file_chooser_get_action(to_unsafe.as(LibGtk::FileChooser*))
      __return_value
    end

    def choice(id)
      __return_value = LibGtk.file_chooser_get_choice(to_unsafe.as(LibGtk::FileChooser*), id.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def create_folders
      __return_value = LibGtk.file_chooser_get_create_folders(to_unsafe.as(LibGtk::FileChooser*))
      __return_value
    end

    def current_folder
      __return_value = LibGtk.file_chooser_get_current_folder(to_unsafe.as(LibGtk::FileChooser*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def current_folder_file
      __return_value = LibGtk.file_chooser_get_current_folder_file(to_unsafe.as(LibGtk::FileChooser*))
      __return_value
    end

    def current_folder_uri
      __return_value = LibGtk.file_chooser_get_current_folder_uri(to_unsafe.as(LibGtk::FileChooser*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def current_name
      __return_value = LibGtk.file_chooser_get_current_name(to_unsafe.as(LibGtk::FileChooser*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def do_overwrite_confirmation
      __return_value = LibGtk.file_chooser_get_do_overwrite_confirmation(to_unsafe.as(LibGtk::FileChooser*))
      __return_value
    end

    def extra_widget
      __return_value = LibGtk.file_chooser_get_extra_widget(to_unsafe.as(LibGtk::FileChooser*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def file
      __return_value = LibGtk.file_chooser_get_file(to_unsafe.as(LibGtk::FileChooser*))
      __return_value
    end

    def filename
      __return_value = LibGtk.file_chooser_get_filename(to_unsafe.as(LibGtk::FileChooser*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def filenames
      __return_value = LibGtk.file_chooser_get_filenames(to_unsafe.as(LibGtk::FileChooser*))
      GLib::SListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def files
      __return_value = LibGtk.file_chooser_get_files(to_unsafe.as(LibGtk::FileChooser*))
      GLib::SListIterator(Gio::File, LibGio::File*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def filter
      __return_value = LibGtk.file_chooser_get_filter(to_unsafe.as(LibGtk::FileChooser*))
      Gtk::FileFilter.new(__return_value) if __return_value
    end

    def local_only
      __return_value = LibGtk.file_chooser_get_local_only(to_unsafe.as(LibGtk::FileChooser*))
      __return_value
    end

    def preview_file
      __return_value = LibGtk.file_chooser_get_preview_file(to_unsafe.as(LibGtk::FileChooser*))
      __return_value if __return_value
    end

    def preview_filename
      __return_value = LibGtk.file_chooser_get_preview_filename(to_unsafe.as(LibGtk::FileChooser*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def preview_uri
      __return_value = LibGtk.file_chooser_get_preview_uri(to_unsafe.as(LibGtk::FileChooser*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def preview_widget
      __return_value = LibGtk.file_chooser_get_preview_widget(to_unsafe.as(LibGtk::FileChooser*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def preview_widget_active
      __return_value = LibGtk.file_chooser_get_preview_widget_active(to_unsafe.as(LibGtk::FileChooser*))
      __return_value
    end

    def select_multiple
      __return_value = LibGtk.file_chooser_get_select_multiple(to_unsafe.as(LibGtk::FileChooser*))
      __return_value
    end

    def show_hidden
      __return_value = LibGtk.file_chooser_get_show_hidden(to_unsafe.as(LibGtk::FileChooser*))
      __return_value
    end

    def uri
      __return_value = LibGtk.file_chooser_get_uri(to_unsafe.as(LibGtk::FileChooser*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def uris
      __return_value = LibGtk.file_chooser_get_uris(to_unsafe.as(LibGtk::FileChooser*))
      GLib::SListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def use_preview_label
      __return_value = LibGtk.file_chooser_get_use_preview_label(to_unsafe.as(LibGtk::FileChooser*))
      __return_value
    end

    def list_filters
      __return_value = LibGtk.file_chooser_list_filters(to_unsafe.as(LibGtk::FileChooser*))
      GLib::SListIterator(Gtk::FileFilter, LibGtk::FileFilter*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def list_shortcut_folder_uris
      __return_value = LibGtk.file_chooser_list_shortcut_folder_uris(to_unsafe.as(LibGtk::FileChooser*))
      GLib::SListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::SList*))) if __return_value
    end

    def list_shortcut_folders
      __return_value = LibGtk.file_chooser_list_shortcut_folders(to_unsafe.as(LibGtk::FileChooser*))
      GLib::SListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::SList*))) if __return_value
    end

    def remove_choice(id)
      LibGtk.file_chooser_remove_choice(to_unsafe.as(LibGtk::FileChooser*), id.to_unsafe)
      nil
    end

    def remove_filter(filter)
      LibGtk.file_chooser_remove_filter(to_unsafe.as(LibGtk::FileChooser*), filter.to_unsafe.as(LibGtk::FileFilter*))
      nil
    end

    def remove_shortcut_folder(folder)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.file_chooser_remove_shortcut_folder(to_unsafe.as(LibGtk::FileChooser*), folder.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_shortcut_folder_uri(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.file_chooser_remove_shortcut_folder_uri(to_unsafe.as(LibGtk::FileChooser*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def select_all
      LibGtk.file_chooser_select_all(to_unsafe.as(LibGtk::FileChooser*))
      nil
    end

    def select_file(file)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.file_chooser_select_file(to_unsafe.as(LibGtk::FileChooser*), file.to_unsafe.as(LibGio::File*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def select_filename(filename)
      __return_value = LibGtk.file_chooser_select_filename(to_unsafe.as(LibGtk::FileChooser*), filename.to_unsafe)
      __return_value
    end

    def select_uri(uri)
      __return_value = LibGtk.file_chooser_select_uri(to_unsafe.as(LibGtk::FileChooser*), uri.to_unsafe)
      __return_value
    end

    def action=(action : Gtk::FileChooserAction)
      LibGtk.file_chooser_set_action(to_unsafe.as(LibGtk::FileChooser*), action)
      nil
    end

    def set_choice(id, option)
      LibGtk.file_chooser_set_choice(to_unsafe.as(LibGtk::FileChooser*), id.to_unsafe, option.to_unsafe)
      nil
    end

    def create_folders=(create_folders)
      LibGtk.file_chooser_set_create_folders(to_unsafe.as(LibGtk::FileChooser*), create_folders)
      nil
    end

    def current_folder=(filename)
      __return_value = LibGtk.file_chooser_set_current_folder(to_unsafe.as(LibGtk::FileChooser*), filename.to_unsafe)
      __return_value
    end

    def set_current_folder_file(file)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.file_chooser_set_current_folder_file(to_unsafe.as(LibGtk::FileChooser*), file.to_unsafe.as(LibGio::File*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def current_folder_uri=(uri)
      __return_value = LibGtk.file_chooser_set_current_folder_uri(to_unsafe.as(LibGtk::FileChooser*), uri.to_unsafe)
      __return_value
    end

    def current_name=(name)
      LibGtk.file_chooser_set_current_name(to_unsafe.as(LibGtk::FileChooser*), name.to_unsafe)
      nil
    end

    def do_overwrite_confirmation=(do_overwrite_confirmation)
      LibGtk.file_chooser_set_do_overwrite_confirmation(to_unsafe.as(LibGtk::FileChooser*), do_overwrite_confirmation)
      nil
    end

    def extra_widget=(extra_widget)
      LibGtk.file_chooser_set_extra_widget(to_unsafe.as(LibGtk::FileChooser*), extra_widget.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def set_file(file)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.file_chooser_set_file(to_unsafe.as(LibGtk::FileChooser*), file.to_unsafe.as(LibGio::File*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def filename=(filename)
      __return_value = LibGtk.file_chooser_set_filename(to_unsafe.as(LibGtk::FileChooser*), filename.to_unsafe)
      __return_value
    end

    def filter=(filter)
      LibGtk.file_chooser_set_filter(to_unsafe.as(LibGtk::FileChooser*), filter.to_unsafe.as(LibGtk::FileFilter*))
      nil
    end

    def local_only=(local_only)
      LibGtk.file_chooser_set_local_only(to_unsafe.as(LibGtk::FileChooser*), local_only)
      nil
    end

    def preview_widget=(preview_widget)
      LibGtk.file_chooser_set_preview_widget(to_unsafe.as(LibGtk::FileChooser*), preview_widget.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def preview_widget_active=(active)
      LibGtk.file_chooser_set_preview_widget_active(to_unsafe.as(LibGtk::FileChooser*), active)
      nil
    end

    def select_multiple=(select_multiple)
      LibGtk.file_chooser_set_select_multiple(to_unsafe.as(LibGtk::FileChooser*), select_multiple)
      nil
    end

    def show_hidden=(show_hidden)
      LibGtk.file_chooser_set_show_hidden(to_unsafe.as(LibGtk::FileChooser*), show_hidden)
      nil
    end

    def uri=(uri)
      __return_value = LibGtk.file_chooser_set_uri(to_unsafe.as(LibGtk::FileChooser*), uri.to_unsafe)
      __return_value
    end

    def use_preview_label=(use_label)
      LibGtk.file_chooser_set_use_preview_label(to_unsafe.as(LibGtk::FileChooser*), use_label)
      nil
    end

    def unselect_all
      LibGtk.file_chooser_unselect_all(to_unsafe.as(LibGtk::FileChooser*))
      nil
    end

    def unselect_file(file)
      LibGtk.file_chooser_unselect_file(to_unsafe.as(LibGtk::FileChooser*), file.to_unsafe.as(LibGio::File*))
      nil
    end

    def unselect_filename(filename)
      LibGtk.file_chooser_unselect_filename(to_unsafe.as(LibGtk::FileChooser*), filename.to_unsafe)
      nil
    end

    def unselect_uri(uri)
      LibGtk.file_chooser_unselect_uri(to_unsafe.as(LibGtk::FileChooser*), uri.to_unsafe)
      nil
    end

    alias ConfirmOverwriteSignal = FileChooser -> Gtk::FileChooserConfirmation
    def on_confirm_overwrite(&__block : ConfirmOverwriteSignal)
      __callback = ->(_arg0 : LibGtk::FileChooser*) {
       __return_value = __block.call(FileChooser.new(_arg0))
       __return_value
      }
      connect("confirm-overwrite", __callback)
    end

    alias CurrentFolderChangedSignal = FileChooser ->
    def on_current_folder_changed(&__block : CurrentFolderChangedSignal)
      __callback = ->(_arg0 : LibGtk::FileChooser*) {
       __return_value = __block.call(FileChooser.new(_arg0))
       __return_value
      }
      connect("current-folder-changed", __callback)
    end

    alias FileActivatedSignal = FileChooser ->
    def on_file_activated(&__block : FileActivatedSignal)
      __callback = ->(_arg0 : LibGtk::FileChooser*) {
       __return_value = __block.call(FileChooser.new(_arg0))
       __return_value
      }
      connect("file-activated", __callback)
    end

    alias SelectionChangedSignal = FileChooser ->
    def on_selection_changed(&__block : SelectionChangedSignal)
      __callback = ->(_arg0 : LibGtk::FileChooser*) {
       __return_value = __block.call(FileChooser.new(_arg0))
       __return_value
      }
      connect("selection-changed", __callback)
    end

    alias UpdatePreviewSignal = FileChooser ->
    def on_update_preview(&__block : UpdatePreviewSignal)
      __callback = ->(_arg0 : LibGtk::FileChooser*) {
       __return_value = __block.call(FileChooser.new(_arg0))
       __return_value
      }
      connect("update-preview", __callback)
    end

  end
end

