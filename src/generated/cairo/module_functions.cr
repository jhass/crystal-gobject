module Cairo
  
  # Creates an image surface of the specified format and dimensions.
  # Returns - a pointer to the newly created surface. 
  # Parameters :
  #   *format* - format of pixels in the surface to create
  #   *width* - width of the surface, in pixels
  #   *height* - height of the surface, in pixels  
  def self.image_surface_create(format : Cairo::Format, width, height) 
    __return_value = LibCairo.image_surface_create(format, width, height)
    Cairo::Surface.new(__return_value)
  end

end

