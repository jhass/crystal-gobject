module Gio
  class FilenameCompleter < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::FilenameCompleter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::FilenameCompleter*)
    end

    def self.new : self
      __return_value = LibGio.filename_completer_new
      cast Gio::FilenameCompleter.new(__return_value)
    end

    def completion_suffix(initial_text)
      __return_value = LibGio.filename_completer_get_completion_suffix(@pointer.as(LibGio::FilenameCompleter*), initial_text.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def completions(initial_text)
      __return_value = LibGio.filename_completer_get_completions(@pointer.as(LibGio::FilenameCompleter*), initial_text.to_unsafe)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def dirs_only=(dirs_only)
      LibGio.filename_completer_set_dirs_only(@pointer.as(LibGio::FilenameCompleter*), dirs_only)
      nil
    end

    alias GotCompletionDataSignal = FilenameCompleter ->
    def on_got_completion_data(&__block : GotCompletionDataSignal)
      __callback = ->(_arg0 : LibGio::FilenameCompleter*) {
       __return_value = __block.call(FilenameCompleter.new(_arg0))
       __return_value
      }
      connect("got-completion-data", __callback)
    end

  end
end

