module Cairo
  class Surface
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibCairo::Surface*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibCairo::Surface*)
    end
    
    def finalize
      LibCairo.surface_destroy(@pointer.as(LibCairo::Surface*))
    end

    def write_to_png( filename )
      __return_value = LibCairo.surface_write_to_png(@pointer.as(LibCairo::Surface*) , filename.to_unsafe)
      __return_value
    end

  end
end

