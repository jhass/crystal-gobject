require "../../src/cairo"
# In this example, we will create a PNG image. 
# We create a surface - instance of Cairo::Surface class.
# Cairo::Format::ARGB32 - each pixel is a 32-bit quantity, with alpha in the upper 8 bits, then red, then green, then blue. 
# The surface is an 390x60 px image. 
surface = Cairo.image_surface_create(Cairo::Format::ARGB32 , 390 , 60)
# We create a cairo context with the surface as the target.
context = Cairo::Context.create(surface)
# We will draw in black ink.
context.set_source_rgb( 0, 0, 0) 
# We choose a font type.
# Cairo::FontSlant::NORMAL - upright font style.
# Cairo::FontWeight::NORMAL - normal font weight. 
context.select_font_face("Sans", Cairo::FontSlant::NORMAL , Cairo::FontWeight::NORMAL)
# We set font size.
context.set_font_size(40) 
# We move to a (10.0, 50.0) position within the image.
context.move_to(10,50)
# We draw the text.
context.show_text("Cairo works!!!")
# We write image to file.
surface.write_to_png("image.png")
