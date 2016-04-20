module Gtk
  class Requisition
    include GObject::WrappedType

    def initialize(@gtk_requisition)
    end

    def to_unsafe
      @gtk_requisition.not_nil!
    end

    def self.new
      __return_value = LibGtk.requisition_new
      cast Gtk::Requisition.new(__return_value)
    end

    def copy
      __return_value = LibGtk.requisition_copy((to_unsafe as LibGtk::Requisition*))
      Gtk::Requisition.new(__return_value)
    end

    def free
      __return_value = LibGtk.requisition_free((to_unsafe as LibGtk::Requisition*))
      __return_value
    end

  end
end

