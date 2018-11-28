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

 def show_page()
      LibCairo.show_page(@pointer.as(LibCairo::Context*))
      nil
    end

    def move_to(x , y)
      LibCairo.move_to(@pointer.as(LibCairo::Context*) , Float64.new(x) , Float64.new(y))
      nil
    end

    def line_to(x , y)
      LibCairo.line_to(@pointer.as(LibCairo::Context*) , Float64.new(x) , Float64.new(y))
      nil
    end

    def set_line_width(width)
      LibCairo.set_line_width(@pointer.as(LibCairo::Context*) , Float64.new(width))
      nil
    end
  
    def fill()
      LibCairo.fill(@pointer.as(LibCairo::Context*))
      nil
    end

    def stroke()
      LibCairo.stroke(@pointer.as(LibCairo::Context*))
      nil
    end

    def stroke_preserve()
      LibCairo.stroke_preserve(@pointer.as(LibCairo::Context*))
      nil
    end

    def translate(x , y)
      LibCairo.translate(@pointer.as(LibCairo::Context*) , Float64.new(x) , Float64.new(y))
      nil
    end
   
   def arc(x , y , radius , angle1 , angle2)
     LibCairo.arc(@pointer.as(LibCairo::Context*) , Float64.new(x) , Float64.new(y) , Float64.new(radius) , Float64.new(angle1) , Float64.new(angle2))
     nil
   end 

  end
end

