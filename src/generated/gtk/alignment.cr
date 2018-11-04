require "./bin"

module Gtk
  
  # The `Gtk::Alignment` widget controls the alignment and size of its child widget.
  # It has four settings: xscale, yscale, xalign, and yalign.
  class Alignment < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::Alignment*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Alignment*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    
    # Returns the "bottom_padding" property value.
    #  The padding to insert at the bottom of the widget.
    def bottom_padding
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "bottom_padding", gvalue)
      gvalue
    end

    
    # Returns the "left_padding" property value.
    #  The padding to insert at the left of the widget.
    def left_padding
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "left_padding", gvalue)
      gvalue
    end

    
    # Returns the "right_padding" property value.
    #  The padding to insert at the right of the widget.
    def right_padding
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "right_padding", gvalue)
      gvalue
    end

    
    # Returns the "top_padding" property value.
    #  The padding to insert at the top of the widget.
    def top_padding
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "top_padding", gvalue)
      gvalue
    end

    
    # Returns the "xalign" property value.
    #  Horizontal position of child in available space. A value of 0.0
    # will flush the child left (or right, in RTL locales); a value
    # of 1.0 will flush the child right (or left, in RTL locales).
    def xalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "xalign", gvalue)
      gvalue
    end

    
    # Returns the "xscale" property value.
    #  If available horizontal space is bigger than needed, how much
    # of it to use for the child. A value of 0.0 means none; a value
    # of 1.0 means all.
    def xscale
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "xscale", gvalue)
      gvalue
    end

    
    # Returns the "yalign" property value.
    #  Vertical position of child in available space. A value of 0.0
    # will flush the child to the top; a value of 1.0 will flush the
    # child to the bottom.
    def yalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "yalign", gvalue)
      gvalue
    end

    
    # Returns the "yscale" property value.
    #  If available vertical space is bigger than needed, how much
    # of it to use for the child. A value of 0.0 means none; a value
    # of 1.0 means all.
    def yscale
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "yscale", gvalue)
      gvalue
    end

    
    # Creates a new `Gtk::Alignment`.
    # Parameters:
    #   *xalign* - the horizontal alignment of the child widget, from 0 (left) to 1 (right).
    #   *yalign* - the vertical alignment of the child widget, from 0 (top) to 1 (bottom).
    #   *xscale* - the amount that the child widget expands horizontally to fill up
    #              unused space, from 0 to 1. A value of 0 indicates that the child widget
    #              should never expand. A value of 1 indicates that the child widget will expand
    #              to fill all of the space allocated for the `Gtk::Alignment`.
    #   *yscale* - the amount that the child widget expands vertically to fill up
    #              unused space, from 0 to 1. The values are similar to `xscale`.
    # DEPRECATED : Use `Gtk::Widget` alignment and margin properties.
    def self.new(xalign, yalign, xscale, yscale) : self
      __return_value = LibGtk.alignment_new(Float32.new(xalign), Float32.new(yalign), Float32.new(xscale), Float32.new(yscale))
      cast Gtk::Widget.new(__return_value)
    end

    
    # Gets the padding on the different sides of the widget.
    # See `Gtk::Alignment#set_padding()`.
    # Parameters:
    #   *padding_top* - location to store the padding
    #                     for the top of the widget, or `nil`.
    #   *padding_bottom* -location to store the padding
    #                     for the bottom of the widget, or `nil`.
    #   *padding_left* - location to store the padding
    #                     for the left of the widget, or `nil`. 
    #   *padding_right* - location to store the padding
    #                     for the right of the widget, or `nil`. 
    # DEPRECATED : Use `Gtk::Widget` alignment and margin properties.
    def padding(padding_top, padding_bottom, padding_left, padding_right)
      LibGtk.alignment_get_padding(@pointer.as(LibGtk::Alignment*), padding_top, padding_bottom, padding_left, padding_right)
      nil
    end

    
    # Sets the `Gtk::Alignment` values.
    # Parameters:
    #   *xalign* - the horizontal alignment of the child widget, from 0 (left) to 1 (right).
    #   *yalign* - the vertical alignment of the child widget, from 0 (top) to 1 (bottom).
    #   *xscale* - the amount that the child widget expands horizontally to fill up
    #              unused space, from 0 to 1. A value of 0 indicates that the child widget
    #              should never expand. A value of 1 indicates that the child widget will expand
    #              to fill all of the space allocated for the `Gtk::Alignment`.
    #   *yscale* - the amount that the child widget expands vertically to fill up
    #              unused space, from 0 to 1. The values are similar to `xscale`.
    # DEPRECATED : Use `Gtk::Widget` alignment and margin properties.
    def set(xalign, yalign, xscale, yscale)
      LibGtk.alignment_set(@pointer.as(LibGtk::Alignment*), Float32.new(xalign), Float32.new(yalign), Float32.new(xscale), Float32.new(yscale))
      nil
    end

    
    # Sets the padding on the different sides of the widget.
    # The padding adds blank space to the sides of the widget.
    # Parameters:
    #   *padding_top* - the padding for the top of the widget.
    #   *padding_bottom* - the padding for the bottom of the widget.
    #   *padding_left* - the padding for the left of the widget.
    #   *padding_right* - the padding for the right of the widget.
     # DEPRECATED : Use `Gtk::Widget` alignment and margin properties. 
    def set_padding(padding_top, padding_bottom, padding_left, padding_right)
      LibGtk.alignment_set_padding(@pointer.as(LibGtk::Alignment*), UInt32.new(padding_top), UInt32.new(padding_bottom), UInt32.new(padding_left), UInt32.new(padding_right))
      nil
    end

  end
end

