module GLib
  class SourcePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::SourcePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::SourcePrivate*)
    end

  end
end

