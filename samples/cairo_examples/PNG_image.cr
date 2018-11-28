require "../../src/cairo"
# In this example, we will create a PNG image. 
class PNG_image
  @surface : Cairo::Surface
  @context : Cairo::Context
  @filename : String
  def initialize(filename,width,height)
    @filename=filename
    # We create a surface - instance of Cairo::Surface class.
    # Cairo::Format::ARGB32 - each pixel is a 32-bit quantity, with alpha in the upper 8 bits, then red, then green, then blue. 
    @surface = Cairo.image_surface_create(Cairo::Format::ARGB32 , width , height)
    # We create a cairo context with the surface as the target.
    @context = Cairo::Context.create(@surface)
  end
  def set_ink_color(red, green, blue)
    @context.set_source_rgb( red, green, blue) 
  end
  def set_font_type(font_type)
    # Cairo::FontSlant::NORMAL - upright font style.
    # Cairo::FontWeight::NORMAL - normal font weight. 
    @context.select_font_face(font_type, Cairo::FontSlant::NORMAL , Cairo::FontWeight::NORMAL)
  end
  def set_font_size(font_size) 
    @context.set_font_size(font_size) 
  end
  def move_to(x,y)
    # We move to a (x, y) position within the image.
    @context.move_to(x,y)
  end
  def draw_text(text)
    # We draw the text
    @context.show_text(text)
  end
  def write() 
    # We write image to file.
    @surface.write_to_png(@filename)
  end
  def set_line_width(width)
    @context.set_line_width(width)
  end
  def line(x0,y0,x1,y1)
    @context.move_to(x0,y0)
    @context.line_to(x1,y1)
  end
  def draw()
    @context.stroke() 
  end
  def draw_and_preserve()
    @context.stroke_preserve() 
  end
  def shift_origin(x,y)
    @context.translate(x,y)
  end
  def arc(x,y,radius,ang1,ang2)
    @context.arc(x,y,radius,ang1*3.1415/180,ang2*3.1415/180)
  end
  def fill_color(red, green, blue)
    @context.set_source_rgb( red, green, blue)
    @context.fill() 
  end

end
my_png=PNG_image.new("my.png",500,500)
my_png.set_ink_color(0,255,0)
my_png.set_font_type("Sans")
my_png.set_font_size(40)
my_png.move_to(10,50)
my_png.draw_text("Hello world!!!")
my_png.set_ink_color(255,0,0)	
my_png.set_line_width(3)	
my_png.line(10,55,250,55)
my_png.draw()
my_png.set_line_width(9)
my_png.set_ink_color(0.69, 0.19, 0)
my_png.shift_origin(375,75)
my_png.arc(0,0,50,0,360)
my_png.draw_and_preserve()
my_png.fill_color(0.3, 0.4, 0.6)
my_png.write()
