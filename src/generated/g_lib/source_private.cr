module GLib
  class SourcePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGLib::SourcePrivate*))
    end

    @g_lib_source_private : LibGLib::SourcePrivate*?
    def initialize(@g_lib_source_private : LibGLib::SourcePrivate*)
    end

    def to_unsafe
      @g_lib_source_private.not_nil!
    end

  end
end

