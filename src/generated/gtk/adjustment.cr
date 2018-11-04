module Gtk
  
  # The `Gtk::Adjustment` object represents a value which has an associated lower
  # and upper bound, together with step and page increments, and a page size.
  # It is used within several GTK+ widgets, including `Gtk::SpinButton`, `Gtk::Viewport`,
  # and `Gtk::Range` (which is a base class for `Gtk::Scrollbar` and `Gtk::Scale`).
  class Adjustment < GObject::InitiallyUnowned
    @pointer : Void*
    def initialize(pointer : LibGtk::Adjustment*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Adjustment*)
    end

    
    # Returns the "lower" property value
    #  The minimum value of the adjustment.
    def lower
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "lower", gvalue)
      gvalue
    end

    
    # Returns the "page_increment" property value
    #  The page increment of the adjustment.
    def page_increment
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "page_increment", gvalue)
      gvalue
    end

    
    # Returns the "page_size" property value
    #  The page size of the adjustment.
    # Note that the page-size is irrelevant and should be set to zero
    # if the adjustment is used for a simple scalar value, e.g. in a
    # `Gtk::SpinButton`.
    def page_size
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "page_size", gvalue)
      gvalue
    end

    
    # Returns the "step_increment" property value
    #  The step increment of the adjustment.
    def step_increment
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "step_increment", gvalue)
      gvalue
    end

    
    # Returns the "upper" property value
    #  The maximum value of the adjustment.
    # Note that values will be restricted by
    # "(upper - page-size)" if the page-size
    # property is nonzero.
    def upper
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "upper", gvalue)
      gvalue
    end

    
    # Returns the "value" property value
    #  The value of the adjustment.
    def value
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "value", gvalue)
      gvalue
    end

    
    # Creates a new `Gtk::Adjustment`.
    # Parameters:
    #   *value* - the initial value
    #   *lower* - the minimum value
    #   *upper* - the maximum value
    #   *step_increment* - the step increment
    #   *page_increment* - the page increment
    #   *page_size* - the page size
    def self.new(value, lower, upper, step_increment, page_increment, page_size) : self
      __return_value = LibGtk.adjustment_new(Float64.new(value), Float64.new(lower), Float64.new(upper), Float64.new(step_increment), Float64.new(page_increment), Float64.new(page_size))
      cast Gtk::Adjustment.new(__return_value)
    end

    
    # Emits a `“changed”` signal from the `Gtk::Adjustment`.
    # This is typically called by the owner of the `Gtk::Adjustment` after it has
    # changed any of the `Gtk::Adjustment` properties other than the value.
    # DEPRECATED:GTK+ emits `“changed”` itself whenever any
    #    of the properties (other than value) change
    def changed
      LibGtk.adjustment_changed(@pointer.as(LibGtk::Adjustment*))
      nil
    end

    # Updates the “value” property to ensure that the range
    # between lower and upper is in the current page 
    # (i.e. between “value” and “value” + “page-size”). 
    # If the range is larger than the page size, 
    #then only the start of it will be in the current page.
    # A “value-changed” signal will be emitted if the value is changed.
    # Parameters: 
    #   *lower* - the minimum value
    #   *upper* - the maximum value
    def clamp_page(lower, upper)
      LibGtk.adjustment_clamp_page(@pointer.as(LibGtk::Adjustment*), Float64.new(lower), Float64.new(upper))
      nil
    end

    
    # Sets all properties of the adjustment at once.
    # Use this function to avoid multiple emissions of the “changed” signal.
    # See `Gtk::Adjustment#set_lower()` for an alternative way of compressing multiple emissions of “changed” into one.
    # Parameters:
    #   *value* - the initial value
    #   *lower* - the minimum value
    #   *upper* - the maximum value
    #   *step_increment* - the step increment
    #   *page_increment* - the page increment
    #   *page_size* - the new page size
    def configure(value, lower, upper, step_increment, page_increment, page_size)
      LibGtk.adjustment_configure(@pointer.as(LibGtk::Adjustment*), Float64.new(value), Float64.new(lower), Float64.new(upper), Float64.new(step_increment), Float64.new(page_increment), Float64.new(page_size))
      nil
    end

    
    # Retrieves the minimum value of the adjustment.
    def lower
      __return_value = LibGtk.adjustment_get_lower(@pointer.as(LibGtk::Adjustment*))
      __return_value
    end

    
    # Gets the smaller of step increment and page increment.
    def minimum_increment
      __return_value = LibGtk.adjustment_get_minimum_increment(@pointer.as(LibGtk::Adjustment*))
      __return_value
    end

    
    # Retrieves the page increment of the adjustment.
    def page_increment
      __return_value = LibGtk.adjustment_get_page_increment(@pointer.as(LibGtk::Adjustment*))
      __return_value
    end

    
    # Retrieves the page size of the adjustment.
    def page_size
      __return_value = LibGtk.adjustment_get_page_size(@pointer.as(LibGtk::Adjustment*))
      __return_value
    end

    
    # Retrieves the step increment of the adjustment.
    def step_increment
      __return_value = LibGtk.adjustment_get_step_increment(@pointer.as(LibGtk::Adjustment*))
      __return_value
    end

    
    # Retrieves the maximum value of the adjustment.
    def upper
      __return_value = LibGtk.adjustment_get_upper(@pointer.as(LibGtk::Adjustment*))
      __return_value
    end

    
    # Gets the current value of the adjustment.
    # See `Gtk::Adjustment#set_value()`.
    def value
      __return_value = LibGtk.adjustment_get_value(@pointer.as(LibGtk::Adjustment*))
      __return_value
    end

    
    # Sets the minimum value of the adjustment.
    # Parameters:
    #   *lower* - the new minimum value.
    def lower=(lower)
      LibGtk.adjustment_set_lower(@pointer.as(LibGtk::Adjustment*), Float64.new(lower))
      nil
    end

    
    # Sets the page increment of the adjustment.
    # Parameters:
    #   *page_increment* - the new page increment
    def page_increment=(page_increment)
      LibGtk.adjustment_set_page_increment(@pointer.as(LibGtk::Adjustment*), Float64.new(page_increment))
      nil
    end

    
    # Sets the page size of the adjustment.
    # Parameters:
    #   *page_size* - the new page size
    def page_size=(page_size)
      LibGtk.adjustment_set_page_size(@pointer.as(LibGtk::Adjustment*), Float64.new(page_size))
      nil
    end

    
    # Sets the step increment of the adjustment.
    # Parameters:
    #   *step_increment* - the new step increment
    def step_increment=(step_increment)
      LibGtk.adjustment_set_step_increment(@pointer.as(LibGtk::Adjustment*), Float64.new(step_increment))
      nil
    end

    
    # Sets the maximum value of the adjustment.
    # Parameters:
    #   *upper* - the new maximum value
    def upper=(upper)
      LibGtk.adjustment_set_upper(@pointer.as(LibGtk::Adjustment*), Float64.new(upper))
      nil
    end

    
    # Sets the `Gtk::Adjustment` value.
    # The value is clamped to lie between “lower” and “upper”.
    # Note that for adjustments which are used in a `Gtk::Scrollbar`,
    # the effective range of allowed values goes from “lower” to “upper” - “page-size”.
    def value=(value)
      LibGtk.adjustment_set_value(@pointer.as(LibGtk::Adjustment*), Float64.new(value))
      nil
    end

    
    # Emits a `“value-changed”` signal from the `Gtk::Adjustment`.
    # This is typically called by the owner of the `Gtk::Adjustment` after it has
    # changed the `“value”` property.
    # DEPRECATED:GTK+ emits `“value-changed”` itself whenever
    #    the value changes
    def value_changed
      LibGtk.adjustment_value_changed(@pointer.as(LibGtk::Adjustment*))
      nil
    end

    # Emitted when one or more of the `Gtk::Adjustment` properties
    # have been changed, other than the “value” property.
    alias ChangedSignal = Adjustment ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::Adjustment*) {
       __return_value = __block.call(Adjustment.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

    # Emitted when the “value” property has been changed.
    alias ValueChangedSignal = Adjustment ->
    def on_value_changed(&__block : ValueChangedSignal)
      __callback = ->(_arg0 : LibGtk::Adjustment*) {
       __return_value = __block.call(Adjustment.new(_arg0))
       __return_value
      }
      connect("value-changed", __callback)
    end

  end
end

