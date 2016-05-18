module Gtk
  module Orientable
    def orientation
      __return_value = LibGtk.orientable_get_orientation(to_unsafe.as(LibGtk::Orientable*))
      __return_value
    end

    def orientation=(orientation)
      __return_value = LibGtk.orientable_set_orientation(to_unsafe.as(LibGtk::Orientable*), orientation)
      __return_value
    end

  end
end

