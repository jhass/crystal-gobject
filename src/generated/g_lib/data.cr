module GLib
  class Data
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::Data*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Data*)
    end

  end
end

