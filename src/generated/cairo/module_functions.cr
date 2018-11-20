module Cairo
  
  # Creates an image surface of the specified format and dimensions.
  # Returns - a instance of Cairo::Surface. 
  # Parameters :
  #   *format* - format of pixels in the surface to create
  #   *width* - width of the surface, in pixels
  #   *height* - height of the surface, in pixels  
  def self.image_surface_create(format : Cairo::Format, width, height) 
    __return_value = LibCairo.image_surface_create(format, Int32.new(width), Int32.new(height))
    Cairo::Surface.new(__return_value)
  end
  
  # Creates a PDF surface of the specified size in points to be written to *filename*. 
  # Returns - a instance of Cairo::Surface.
  # Parameters :
  #   *filename* - a filename for the PDF output
  #   *width* - width of the surface, in points (1 point == 1/72.0 inch)
  #   *height* - height of the surface, in points (1 point == 1/72.0 inch)
  def self.pdf_surface_create(filename, width, height)
    __return_value = LibCairo.pdf_surface_create(filename.to_unsafe, Float64.new(width), Float64.new(height))
    Cairo::Surface.new(__return_value)
  end
  
  # Creates a SVG surface of the specified size in points to be written to *filename*. 
  # Returns - a instance of Cairo::Surface.
  # Parameters :
  #   *filename* - a filename for the SVG output
  #   *width* - width of the surface, in points (1 point == 1/72.0 inch)
  #   *height* - height of the surface, in points (1 point == 1/72.0 inch)
  def self.svg_surface_create(filename, width, height)
    __return_value = LibCairo.svg_surface_create(filename.to_unsafe, Float64.new(width), Float64.new(height))
    Cairo::Surface.new(__return_value)
  end

end

