module GLib
  class SourcePrivate
    include GObject::WrappedType

    def initialize(@g_lib_source_private)
    end

    def to_unsafe
      @g_lib_source_private.not_nil!
    end

  end
end

