module Gdk
  class Rectangle
    include GObject::WrappedType

    def initialize(@gdk_rectangle)
    end

    def to_unsafe
      @gdk_rectangle.not_nil!
    end

    def intersect(src2, dest)
      __return_value = LibGdk.rectangle_intersect((to_unsafe as LibGdk::Rectangle*), (src2.to_unsafe as LibGdk::Rectangle*), dest)
      __return_value
    end

    def union(src2, dest)
      __return_value = LibGdk.rectangle_union((to_unsafe as LibGdk::Rectangle*), (src2.to_unsafe as LibGdk::Rectangle*), dest)
      __return_value
    end

  end
end

