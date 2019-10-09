module Pango
  class ScriptIter
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibPango::ScriptIter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::ScriptIter*)
    end

    def self.new(text, length) : self
      __return_value = LibPango.script_iter_new(text.to_unsafe, Int32.new(length))
      cast Pango::ScriptIter.new(__return_value)
    end

    def free
      LibPango.script_iter_free(@pointer.as(LibPango::ScriptIter*))
      nil
    end

    def range(start, _end, script : Pango::Script?)
      LibPango.script_iter_get_range(@pointer.as(LibPango::ScriptIter*), start, _end, script)
      nil
    end

    def next
      __return_value = LibPango.script_iter_next(@pointer.as(LibPango::ScriptIter*))
      __return_value
    end

  end
end

