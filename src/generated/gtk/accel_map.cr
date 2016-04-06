module Gtk
  class AccelMap < GObject::Object
    def initialize(@gtk_accel_map)
    end

    def to_unsafe
      @gtk_accel_map.not_nil!
    end

    def self.add_entry(accel_path, accel_key, accel_mods)
      __return_value = LibGtk.accel_map_add_entry(accel_path, UInt32.new(accel_key), accel_mods)
      __return_value
    end

    def self.add_filter(filter_pattern)
      __return_value = LibGtk.accel_map_add_filter(filter_pattern)
      __return_value
    end

    def self.change_entry(accel_path, accel_key, accel_mods, replace)
      __return_value = LibGtk.accel_map_change_entry(accel_path, UInt32.new(accel_key), accel_mods, replace)
      __return_value
    end

    def self.foreach(data, foreach_func : LibGtk::AccelMapForeach)
      __return_value = LibGtk.accel_map_foreach(data && data, foreach_func)
      __return_value
    end

    def self.foreach_unfiltered(data, foreach_func : LibGtk::AccelMapForeach)
      __return_value = LibGtk.accel_map_foreach_unfiltered(data, foreach_func)
      __return_value
    end

    def self.get
      __return_value = LibGtk.accel_map_get
      Gtk::AccelMap.new(__return_value)
    end

    def self.load(file_name)
      __return_value = LibGtk.accel_map_load(file_name)
      __return_value
    end

    def self.load_fd(fd)
      __return_value = LibGtk.accel_map_load_fd(Int32.new(fd))
      __return_value
    end

    def self.load_scanner(scanner)
      __return_value = LibGtk.accel_map_load_scanner((scanner.to_unsafe as LibGLib::Scanner*))
      __return_value
    end

    def self.lock_path(accel_path)
      __return_value = LibGtk.accel_map_lock_path(accel_path)
      __return_value
    end

    def self.lookup_entry(accel_path, key)
      __return_value = LibGtk.accel_map_lookup_entry(accel_path, key)
      __return_value
    end

    def self.save(file_name)
      __return_value = LibGtk.accel_map_save(file_name)
      __return_value
    end

    def self.save_fd(fd)
      __return_value = LibGtk.accel_map_save_fd(Int32.new(fd))
      __return_value
    end

    def self.unlock_path(accel_path)
      __return_value = LibGtk.accel_map_unlock_path(accel_path)
      __return_value
    end

    alias ChangedSignal = AccelMap, UInt8, UInt32, Gdk::ModifierType -> 
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::AccelMap*, _arg1 : LibGtk::UInt8**, _arg2 : LibGtk::UInt32*, _arg3 : LibGtk::LibGdk::ModifierType*) {
       __return_value = __block.call(AccelMap.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)), _arg2, _arg3)
       __return_value
      }
      connect("changed", __callback)
    end

  end
end

