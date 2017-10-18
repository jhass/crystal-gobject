module Pango
  class ScriptIter
    include GObject::WrappedType

    @pango_script_iter : LibPango::ScriptIter*?
    def initialize(@pango_script_iter : LibPango::ScriptIter*)
    end

    def to_unsafe
      @pango_script_iter.not_nil!
    end

    def free
      LibPango.script_iter_free(to_unsafe.as(LibPango::ScriptIter*))
      nil
    end

    def range(start, end, script : Pango::Script?)
      LibPango.script_iter_get_range(to_unsafe.as(LibPango::ScriptIter*), start, end, script)
      nil
    end

    def next
      __return_value = LibPango.script_iter_next(to_unsafe.as(LibPango::ScriptIter*))
      __return_value
    end

  end
end

