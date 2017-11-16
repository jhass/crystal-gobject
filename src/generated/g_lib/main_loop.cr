module GLib
  class MainLoop
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::MainLoop*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::MainLoop*)
    end

    def self.new(context, is_running) : self
      __return_value = LibGLib.main_loop_new(context ? context.to_unsafe.as(LibGLib::MainContext*) : nil, is_running)
      cast GLib::MainLoop.new(__return_value)
    end

    def context
      __return_value = LibGLib.main_loop_get_context(@pointer.as(LibGLib::MainLoop*))
      GLib::MainContext.new(__return_value)
    end

    def running?
      __return_value = LibGLib.main_loop_is_running(@pointer.as(LibGLib::MainLoop*))
      __return_value
    end

    def quit
      LibGLib.main_loop_quit(@pointer.as(LibGLib::MainLoop*))
      nil
    end

    def ref
      __return_value = LibGLib.main_loop_ref(@pointer.as(LibGLib::MainLoop*))
      GLib::MainLoop.new(__return_value)
    end

    def run
      LibGLib.main_loop_run(@pointer.as(LibGLib::MainLoop*))
      nil
    end

    def unref
      LibGLib.main_loop_unref(@pointer.as(LibGLib::MainLoop*))
      nil
    end

  end
end

