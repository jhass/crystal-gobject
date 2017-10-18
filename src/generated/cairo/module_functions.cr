module Cairo
  def self.image_surface_create
    LibCairo.image_surface_create
    nil
  end
end

