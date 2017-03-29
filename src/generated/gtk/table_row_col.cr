module Gtk
  class TableRowCol
    include GObject::WrappedType

    def self.new(requisition : UInt16|Nil = nil, allocation : UInt16|Nil = nil, spacing : UInt16|Nil = nil, need_expand : UInt32|Nil = nil, need_shrink : UInt32|Nil = nil, expand : UInt32|Nil = nil, shrink : UInt32|Nil = nil, empty : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(28, 0u8)
      new(ptr.as(LibGtk::TableRowCol*)).tap do |object|
        object.requisition = requisition unless requisition.nil?
        object.allocation = allocation unless allocation.nil?
        object.spacing = spacing unless spacing.nil?
        object.need_expand = need_expand unless need_expand.nil?
        object.need_shrink = need_shrink unless need_shrink.nil?
        object.expand = expand unless expand.nil?
        object.shrink = shrink unless shrink.nil?
        object.empty = empty unless empty.nil?
      end
    end

    @gtk_table_row_col : LibGtk::TableRowCol*?
    def initialize(@gtk_table_row_col : LibGtk::TableRowCol*)
    end

    def to_unsafe
      @gtk_table_row_col.not_nil!
    end

    def requisition
      (to_unsafe.as(LibGtk::TableRowCol*).value.requisition)
    end

    def requisition=(value : UInt16)
      to_unsafe.as(LibGtk::TableRowCol*).value.requisition = UInt16.new(value)
    end

    def allocation
      (to_unsafe.as(LibGtk::TableRowCol*).value.allocation)
    end

    def allocation=(value : UInt16)
      to_unsafe.as(LibGtk::TableRowCol*).value.allocation = UInt16.new(value)
    end

    def spacing
      (to_unsafe.as(LibGtk::TableRowCol*).value.spacing)
    end

    def spacing=(value : UInt16)
      to_unsafe.as(LibGtk::TableRowCol*).value.spacing = UInt16.new(value)
    end

    def need_expand
      (to_unsafe.as(LibGtk::TableRowCol*).value.need_expand)
    end

    def need_expand=(value : UInt32)
      to_unsafe.as(LibGtk::TableRowCol*).value.need_expand = UInt32.new(value)
    end

    def need_shrink
      (to_unsafe.as(LibGtk::TableRowCol*).value.need_shrink)
    end

    def need_shrink=(value : UInt32)
      to_unsafe.as(LibGtk::TableRowCol*).value.need_shrink = UInt32.new(value)
    end

    def expand
      (to_unsafe.as(LibGtk::TableRowCol*).value.expand)
    end

    def expand=(value : UInt32)
      to_unsafe.as(LibGtk::TableRowCol*).value.expand = UInt32.new(value)
    end

    def shrink
      (to_unsafe.as(LibGtk::TableRowCol*).value.shrink)
    end

    def shrink=(value : UInt32)
      to_unsafe.as(LibGtk::TableRowCol*).value.shrink = UInt32.new(value)
    end

    def empty
      (to_unsafe.as(LibGtk::TableRowCol*).value.empty)
    end

    def empty=(value : UInt32)
      to_unsafe.as(LibGtk::TableRowCol*).value.empty = UInt32.new(value)
    end

  end
end

