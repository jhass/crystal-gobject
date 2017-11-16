module Gtk
  module Orientable
    def orientation
      __return_value = LibGtk.orientable_get_orientation(@pointer.as(LibGtk::Orientable*))
      __return_value
    end

    def orientation=(orientation : Gtk::Orientation)
      LibGtk.orientable_set_orientation(@pointer.as(LibGtk::Orientable*), orientation)
      nil
    end

  end
end

