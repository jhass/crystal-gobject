module Cairo
  class Context
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibCairo::Context*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibCairo::Context*)
    end
   
    def finalize
      LibCairo.destroy(@pointer.as(LibCairo::Context*))
    end

    def self.create(target : Cairo::Surface) 
      __return_value = LibCairo.create(target.to_unsafe())
      Cairo::Context.new(__return_value)
    end

    def set_source_rgb(red , green , blue)
      LibCairo.set_source_rgb(@pointer.as(LibCairo::Context*) , Float64.new(red) , Float64.new(green) , Float64.new(blue)) 
      nil
    end

    def set_source_rgba(red , green , blue , alfa)
      LibCairo.set_source_rgba(@pointer.as(LibCairo::Context*) , Float64.new(red) , Float64.new(green) , Float64.new(blue) , Float64.new(alfa)) 
      nil
    end
 
    def select_font_face(family , slant : Cairo::FontSlant , weight : Cairo::FontWeight)
      LibCairo.select_font_face(@pointer.as(LibCairo::Context*) , family.to_unsafe , slant , weight)
      nil
    end

    def set_font_size(size) 
      LibCairo.set_font_size(@pointer.as(LibCairo::Context*) , Float64.new(size))
      nil
    end

    def show_text(text)
      LibCairo.show_text(@pointer.as(LibCairo::Context*) , text.to_unsafe)
      nil
    end

    def move_to(x , y)
      LibCairo.move_to(@pointer.as(LibCairo::Context*) , Float64.new(x) , Float64.new(y))
      nil
    end

  end
end

