module GLib
  class SourcePrivate
    include GObject::WrappedType

    @g_lib_source_private : LibGLib::SourcePrivate*?
    def initialize(@g_lib_source_private : LibGLib::SourcePrivate*)
    end

    def to_unsafe
      @g_lib_source_private.not_nil!.as(Void*)
    end

  end
end

