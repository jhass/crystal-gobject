module Gtk
  class PageRange
    include GObject::WrappedType

    def self.new(start : Int32|Nil = nil, end end_ : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(8, 0u8)
      new(ptr.as(LibGtk::PageRange*)).tap do |object|
        object.start = start unless start.nil?
        object.end = end_ unless end_.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::PageRange*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PageRange*)
    end

    def start
      (to_unsafe.as(LibGtk::PageRange*).value.start)
    end

    def start=(value : Int32)
      to_unsafe.as(LibGtk::PageRange*).value.start = Int32.new(value)
    end

    def end
      (to_unsafe.as(LibGtk::PageRange*).value.end_)
    end

    def end=(value : Int32)
      to_unsafe.as(LibGtk::PageRange*).value.end_ = Int32.new(value)
    end

  end
end

