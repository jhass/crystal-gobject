module GLib
  class StatBuf
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::StatBuf*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::StatBuf*)
    end

  end
end

