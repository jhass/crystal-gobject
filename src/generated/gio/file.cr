module Gio
  module File
    def self.new_for_commandline_arg(arg)
      __return_value = LibGio.file_new_for_commandline_arg(arg.to_unsafe)
      __return_value
    end

    def self.new_for_commandline_arg_and_cwd(arg, cwd)
      __return_value = LibGio.file_new_for_commandline_arg_and_cwd(arg.to_unsafe, cwd.to_unsafe)
      __return_value
    end

    def self.new_for_path(path)
      __return_value = LibGio.file_new_for_path(path.to_unsafe)
      __return_value
    end

    def self.new_for_uri(uri)
      __return_value = LibGio.file_new_for_uri(uri.to_unsafe)
      __return_value
    end

    def self.new_tmp(tmpl, iostream)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_new_tmp(tmpl ? tmpl.to_unsafe : nil, iostream, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.parse_name(parse_name)
      __return_value = LibGio.file_parse_name(parse_name.to_unsafe)
      __return_value
    end

    def append_to(flags : Gio::FileCreateFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_append_to(to_unsafe.as(LibGio::File*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileOutputStream.new(__return_value)
    end

    def append_to_async(flags : Gio::FileCreateFlags, io_priority, cancellable, callback, user_data)
      LibGio.file_append_to_async(to_unsafe.as(LibGio::File*), flags, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def append_to_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_append_to_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileOutputStream.new(__return_value)
    end

    def copy(destination, flags : Gio::FileCopyFlags, cancellable, progress_callback, progress_callback_data)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_copy(to_unsafe.as(LibGio::File*), destination.to_unsafe.as(LibGio::File*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, progress_callback ? progress_callback : nil, progress_callback_data ? progress_callback_data : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def copy_async(destination, flags : Gio::FileCopyFlags, io_priority, cancellable, progress_callback, progress_callback_data, callback, user_data)
      LibGio.file_copy_async(to_unsafe.as(LibGio::File*), destination.to_unsafe.as(LibGio::File*), flags, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, progress_callback ? progress_callback : nil, progress_callback_data ? progress_callback_data : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def copy_attributes(destination, flags : Gio::FileCopyFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_copy_attributes(to_unsafe.as(LibGio::File*), destination.to_unsafe.as(LibGio::File*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def copy_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_copy_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def create(flags : Gio::FileCreateFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_create(to_unsafe.as(LibGio::File*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileOutputStream.new(__return_value)
    end

    def create_async(flags : Gio::FileCreateFlags, io_priority, cancellable, callback, user_data)
      LibGio.file_create_async(to_unsafe.as(LibGio::File*), flags, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def create_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_create_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileOutputStream.new(__return_value)
    end

    def create_readwrite(flags : Gio::FileCreateFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_create_readwrite(to_unsafe.as(LibGio::File*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileIOStream.new(__return_value)
    end

    def create_readwrite_async(flags : Gio::FileCreateFlags, io_priority, cancellable, callback, user_data)
      LibGio.file_create_readwrite_async(to_unsafe.as(LibGio::File*), flags, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def create_readwrite_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_create_readwrite_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileIOStream.new(__return_value)
    end

    def delete(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_delete(to_unsafe.as(LibGio::File*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def delete_async(io_priority, cancellable, callback, user_data)
      LibGio.file_delete_async(to_unsafe.as(LibGio::File*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def delete_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_delete_finish(to_unsafe.as(LibGio::File*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def dup
      __return_value = LibGio.file_dup(to_unsafe.as(LibGio::File*))
      __return_value
    end

    def eject_mountable(flags : Gio::MountUnmountFlags, cancellable, callback, user_data)
      LibGio.file_eject_mountable(to_unsafe.as(LibGio::File*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def eject_mountable_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_eject_mountable_finish(to_unsafe.as(LibGio::File*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def eject_mountable_with_operation(flags : Gio::MountUnmountFlags, mount_operation, cancellable, callback, user_data)
      LibGio.file_eject_mountable_with_operation(to_unsafe.as(LibGio::File*), flags, mount_operation ? mount_operation.to_unsafe.as(LibGio::MountOperation*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def eject_mountable_with_operation_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_eject_mountable_with_operation_finish(to_unsafe.as(LibGio::File*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def enumerate_children(attributes, flags : Gio::FileQueryInfoFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_enumerate_children(to_unsafe.as(LibGio::File*), attributes.to_unsafe, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileEnumerator.new(__return_value)
    end

    def enumerate_children_async(attributes, flags : Gio::FileQueryInfoFlags, io_priority, cancellable, callback, user_data)
      LibGio.file_enumerate_children_async(to_unsafe.as(LibGio::File*), attributes.to_unsafe, flags, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def enumerate_children_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_enumerate_children_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileEnumerator.new(__return_value)
    end

    def equal(file2)
      __return_value = LibGio.file_equal(to_unsafe.as(LibGio::File*), file2.to_unsafe.as(LibGio::File*))
      __return_value
    end

    def find_enclosing_mount(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_find_enclosing_mount(to_unsafe.as(LibGio::File*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def find_enclosing_mount_async(io_priority, cancellable, callback, user_data)
      LibGio.file_find_enclosing_mount_async(to_unsafe.as(LibGio::File*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def find_enclosing_mount_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_find_enclosing_mount_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def basename
      __return_value = LibGio.file_get_basename(to_unsafe.as(LibGio::File*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def child(name)
      __return_value = LibGio.file_get_child(to_unsafe.as(LibGio::File*), name.to_unsafe)
      __return_value
    end

    def child_for_display_name(display_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_get_child_for_display_name(to_unsafe.as(LibGio::File*), display_name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def parent
      __return_value = LibGio.file_get_parent(to_unsafe.as(LibGio::File*))
      __return_value if __return_value
    end

    def parse_name
      __return_value = LibGio.file_get_parse_name(to_unsafe.as(LibGio::File*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def path
      __return_value = LibGio.file_get_path(to_unsafe.as(LibGio::File*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def relative_path(descendant)
      __return_value = LibGio.file_get_relative_path(to_unsafe.as(LibGio::File*), descendant.to_unsafe.as(LibGio::File*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def uri
      __return_value = LibGio.file_get_uri(to_unsafe.as(LibGio::File*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def uri_scheme
      __return_value = LibGio.file_get_uri_scheme(to_unsafe.as(LibGio::File*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def has_parent(parent)
      __return_value = LibGio.file_has_parent(to_unsafe.as(LibGio::File*), parent ? parent.to_unsafe.as(LibGio::File*) : nil)
      __return_value
    end

    def has_prefix(prefix)
      __return_value = LibGio.file_has_prefix(to_unsafe.as(LibGio::File*), prefix.to_unsafe.as(LibGio::File*))
      __return_value
    end

    def has_uri_scheme(uri_scheme)
      __return_value = LibGio.file_has_uri_scheme(to_unsafe.as(LibGio::File*), uri_scheme.to_unsafe)
      __return_value
    end

    def hash
      __return_value = LibGio.file_hash(to_unsafe.as(LibGio::File*))
      __return_value
    end

    def native?
      __return_value = LibGio.file_is_native(to_unsafe.as(LibGio::File*))
      __return_value
    end

    def load_contents(cancellable, contents, length, etag_out)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_load_contents(to_unsafe.as(LibGio::File*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, contents, length, etag_out, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_contents_async(cancellable, callback, user_data)
      LibGio.file_load_contents_async(to_unsafe.as(LibGio::File*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def load_contents_finish(res, contents, length, etag_out)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_load_contents_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), contents, length, etag_out, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_partial_contents_finish(res, contents, length, etag_out)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_load_partial_contents_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), contents, length, etag_out, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def make_directory(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_make_directory(to_unsafe.as(LibGio::File*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def make_directory_async(io_priority, cancellable, callback, user_data)
      LibGio.file_make_directory_async(to_unsafe.as(LibGio::File*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def make_directory_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_make_directory_finish(to_unsafe.as(LibGio::File*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def make_directory_with_parents(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_make_directory_with_parents(to_unsafe.as(LibGio::File*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def make_symbolic_link(symlink_value, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_make_symbolic_link(to_unsafe.as(LibGio::File*), symlink_value.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def measure_disk_usage_finish(result, disk_usage, num_dirs, num_files)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_measure_disk_usage_finish(to_unsafe.as(LibGio::File*), result.to_unsafe.as(LibGio::AsyncResult*), disk_usage, num_dirs, num_files, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def monitor(flags : Gio::FileMonitorFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_monitor(to_unsafe.as(LibGio::File*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileMonitor.new(__return_value)
    end

    def monitor_directory(flags : Gio::FileMonitorFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_monitor_directory(to_unsafe.as(LibGio::File*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileMonitor.new(__return_value)
    end

    def monitor_file(flags : Gio::FileMonitorFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_monitor_file(to_unsafe.as(LibGio::File*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileMonitor.new(__return_value)
    end

    def mount_enclosing_volume(flags : Gio::MountMountFlags, mount_operation, cancellable, callback, user_data)
      LibGio.file_mount_enclosing_volume(to_unsafe.as(LibGio::File*), flags, mount_operation ? mount_operation.to_unsafe.as(LibGio::MountOperation*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def mount_enclosing_volume_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_mount_enclosing_volume_finish(to_unsafe.as(LibGio::File*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def mount_mountable(flags : Gio::MountMountFlags, mount_operation, cancellable, callback, user_data)
      LibGio.file_mount_mountable(to_unsafe.as(LibGio::File*), flags, mount_operation ? mount_operation.to_unsafe.as(LibGio::MountOperation*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def mount_mountable_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_mount_mountable_finish(to_unsafe.as(LibGio::File*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def move(destination, flags : Gio::FileCopyFlags, cancellable, progress_callback, progress_callback_data)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_move(to_unsafe.as(LibGio::File*), destination.to_unsafe.as(LibGio::File*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, progress_callback ? progress_callback : nil, progress_callback_data ? progress_callback_data : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def open_readwrite(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_open_readwrite(to_unsafe.as(LibGio::File*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileIOStream.new(__return_value)
    end

    def open_readwrite_async(io_priority, cancellable, callback, user_data)
      LibGio.file_open_readwrite_async(to_unsafe.as(LibGio::File*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def open_readwrite_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_open_readwrite_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileIOStream.new(__return_value)
    end

    def poll_mountable(cancellable, callback, user_data)
      LibGio.file_poll_mountable(to_unsafe.as(LibGio::File*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def poll_mountable_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_poll_mountable_finish(to_unsafe.as(LibGio::File*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def query_default_handler(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_query_default_handler(to_unsafe.as(LibGio::File*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def query_exists(cancellable)
      __return_value = LibGio.file_query_exists(to_unsafe.as(LibGio::File*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil)
      __return_value
    end

    def query_file_type(flags : Gio::FileQueryInfoFlags, cancellable)
      __return_value = LibGio.file_query_file_type(to_unsafe.as(LibGio::File*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil)
      __return_value
    end

    def query_filesystem_info(attributes, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_query_filesystem_info(to_unsafe.as(LibGio::File*), attributes.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value)
    end

    def query_filesystem_info_async(attributes, io_priority, cancellable, callback, user_data)
      LibGio.file_query_filesystem_info_async(to_unsafe.as(LibGio::File*), attributes.to_unsafe, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def query_filesystem_info_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_query_filesystem_info_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value)
    end

    def query_info(attributes, flags : Gio::FileQueryInfoFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_query_info(to_unsafe.as(LibGio::File*), attributes.to_unsafe, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value)
    end

    def query_info_async(attributes, flags : Gio::FileQueryInfoFlags, io_priority, cancellable, callback, user_data)
      LibGio.file_query_info_async(to_unsafe.as(LibGio::File*), attributes.to_unsafe, flags, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def query_info_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_query_info_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value)
    end

    def query_settable_attributes(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_query_settable_attributes(to_unsafe.as(LibGio::File*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileAttributeInfoList.new(__return_value)
    end

    def query_writable_namespaces(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_query_writable_namespaces(to_unsafe.as(LibGio::File*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileAttributeInfoList.new(__return_value)
    end

    def read(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_read(to_unsafe.as(LibGio::File*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInputStream.new(__return_value)
    end

    def read_async(io_priority, cancellable, callback, user_data)
      LibGio.file_read_async(to_unsafe.as(LibGio::File*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def read_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_read_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInputStream.new(__return_value)
    end

    def replace(etag, make_backup, flags : Gio::FileCreateFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_replace(to_unsafe.as(LibGio::File*), etag ? etag.to_unsafe : nil, make_backup, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileOutputStream.new(__return_value)
    end

    def replace_async(etag, make_backup, flags : Gio::FileCreateFlags, io_priority, cancellable, callback, user_data)
      LibGio.file_replace_async(to_unsafe.as(LibGio::File*), etag ? etag.to_unsafe : nil, make_backup, flags, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def replace_contents(contents, length, etag, make_backup, flags : Gio::FileCreateFlags, new_etag, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_replace_contents(to_unsafe.as(LibGio::File*), contents, UInt64.new(length), etag ? etag.to_unsafe : nil, make_backup, flags, new_etag, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def replace_contents_async(contents, length, etag, make_backup, flags : Gio::FileCreateFlags, cancellable, callback, user_data)
      LibGio.file_replace_contents_async(to_unsafe.as(LibGio::File*), contents, UInt64.new(length), etag ? etag.to_unsafe : nil, make_backup, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def replace_contents_bytes_async(contents, etag, make_backup, flags : Gio::FileCreateFlags, cancellable, callback, user_data)
      LibGio.file_replace_contents_bytes_async(to_unsafe.as(LibGio::File*), contents.to_unsafe.as(LibGLib::Bytes*), etag ? etag.to_unsafe : nil, make_backup, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def replace_contents_finish(res, new_etag)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_replace_contents_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), new_etag, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def replace_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_replace_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileOutputStream.new(__return_value)
    end

    def replace_readwrite(etag, make_backup, flags : Gio::FileCreateFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_replace_readwrite(to_unsafe.as(LibGio::File*), etag ? etag.to_unsafe : nil, make_backup, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileIOStream.new(__return_value)
    end

    def replace_readwrite_async(etag, make_backup, flags : Gio::FileCreateFlags, io_priority, cancellable, callback, user_data)
      LibGio.file_replace_readwrite_async(to_unsafe.as(LibGio::File*), etag ? etag.to_unsafe : nil, make_backup, flags, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def replace_readwrite_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_replace_readwrite_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileIOStream.new(__return_value)
    end

    def resolve_relative_path(relative_path)
      __return_value = LibGio.file_resolve_relative_path(to_unsafe.as(LibGio::File*), relative_path.to_unsafe)
      __return_value
    end

    def set_attribute(attribute, type : Gio::FileAttributeType, value_p, flags : Gio::FileQueryInfoFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_set_attribute(to_unsafe.as(LibGio::File*), attribute.to_unsafe, type, value_p ? value_p : nil, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_attribute_byte_string(attribute, value, flags : Gio::FileQueryInfoFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_set_attribute_byte_string(to_unsafe.as(LibGio::File*), attribute.to_unsafe, value.to_unsafe, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_attribute_int32(attribute, value, flags : Gio::FileQueryInfoFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_set_attribute_int32(to_unsafe.as(LibGio::File*), attribute.to_unsafe, Int32.new(value), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_attribute_int64(attribute, value, flags : Gio::FileQueryInfoFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_set_attribute_int64(to_unsafe.as(LibGio::File*), attribute.to_unsafe, Int64.new(value), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_attribute_string(attribute, value, flags : Gio::FileQueryInfoFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_set_attribute_string(to_unsafe.as(LibGio::File*), attribute.to_unsafe, value.to_unsafe, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_attribute_uint32(attribute, value, flags : Gio::FileQueryInfoFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_set_attribute_uint32(to_unsafe.as(LibGio::File*), attribute.to_unsafe, UInt32.new(value), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_attribute_uint64(attribute, value, flags : Gio::FileQueryInfoFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_set_attribute_uint64(to_unsafe.as(LibGio::File*), attribute.to_unsafe, UInt64.new(value), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_attributes_async(info, flags : Gio::FileQueryInfoFlags, io_priority, cancellable, callback, user_data)
      LibGio.file_set_attributes_async(to_unsafe.as(LibGio::File*), info.to_unsafe.as(LibGio::FileInfo*), flags, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def set_attributes_finish(result, info)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_set_attributes_finish(to_unsafe.as(LibGio::File*), result.to_unsafe.as(LibGio::AsyncResult*), info, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_attributes_from_info(info, flags : Gio::FileQueryInfoFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_set_attributes_from_info(to_unsafe.as(LibGio::File*), info.to_unsafe.as(LibGio::FileInfo*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_display_name(display_name, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_set_display_name(to_unsafe.as(LibGio::File*), display_name.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_display_name_async(display_name, io_priority, cancellable, callback, user_data)
      LibGio.file_set_display_name_async(to_unsafe.as(LibGio::File*), display_name.to_unsafe, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def set_display_name_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_set_display_name_finish(to_unsafe.as(LibGio::File*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def start_mountable(flags : Gio::DriveStartFlags, start_operation, cancellable, callback, user_data)
      LibGio.file_start_mountable(to_unsafe.as(LibGio::File*), flags, start_operation ? start_operation.to_unsafe.as(LibGio::MountOperation*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def start_mountable_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_start_mountable_finish(to_unsafe.as(LibGio::File*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def stop_mountable(flags : Gio::MountUnmountFlags, mount_operation, cancellable, callback, user_data)
      LibGio.file_stop_mountable(to_unsafe.as(LibGio::File*), flags, mount_operation ? mount_operation.to_unsafe.as(LibGio::MountOperation*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def stop_mountable_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_stop_mountable_finish(to_unsafe.as(LibGio::File*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def supports_thread_contexts
      __return_value = LibGio.file_supports_thread_contexts(to_unsafe.as(LibGio::File*))
      __return_value
    end

    def trash(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_trash(to_unsafe.as(LibGio::File*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def trash_async(io_priority, cancellable, callback, user_data)
      LibGio.file_trash_async(to_unsafe.as(LibGio::File*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def trash_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_trash_finish(to_unsafe.as(LibGio::File*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def unmount_mountable(flags : Gio::MountUnmountFlags, cancellable, callback, user_data)
      LibGio.file_unmount_mountable(to_unsafe.as(LibGio::File*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def unmount_mountable_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_unmount_mountable_finish(to_unsafe.as(LibGio::File*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def unmount_mountable_with_operation(flags : Gio::MountUnmountFlags, mount_operation, cancellable, callback, user_data)
      LibGio.file_unmount_mountable_with_operation(to_unsafe.as(LibGio::File*), flags, mount_operation ? mount_operation.to_unsafe.as(LibGio::MountOperation*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def unmount_mountable_with_operation_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_unmount_mountable_with_operation_finish(to_unsafe.as(LibGio::File*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

