module GLib
  class MainLoop
    include GObject::WrappedType

    def initialize(@g_lib_main_loop)
    end

    def to_unsafe
      @g_lib_main_loop.not_nil!
    end

    def self.new_internal(context, is_running)
      __return_value = LibGLib.main_loop_new(context && (context.to_unsafe as LibGLib::MainContext*), is_running)
      GLib::MainLoop.new(__return_value)
    end

    def context
      __return_value = LibGLib.main_loop_get_context((to_unsafe as LibGLib::MainLoop*))
      GLib::MainContext.new(__return_value)
    end

    def running?
      __return_value = LibGLib.main_loop_is_running((to_unsafe as LibGLib::MainLoop*))
      __return_value
    end

    def quit
      __return_value = LibGLib.main_loop_quit((to_unsafe as LibGLib::MainLoop*))
      __return_value
    end

    def ref
      __return_value = LibGLib.main_loop_ref((to_unsafe as LibGLib::MainLoop*))
      GLib::MainLoop.new(__return_value)
    end

    def run
      __return_value = LibGLib.main_loop_run((to_unsafe as LibGLib::MainLoop*))
      __return_value
    end

    def unref
      __return_value = LibGLib.main_loop_unref((to_unsafe as LibGLib::MainLoop*))
      __return_value
    end

  end
end

