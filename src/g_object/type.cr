module GObject
  enum Type : UInt64
    INVALID   = 0 << 2
    NONE      = 1 << 2
    INTERFACE = 2 << 2
    CHAR      = 3 << 2
    UCHAR     = 4 << 2
    BOOLEAN   = 5 << 2
    INT       = 6 << 2
    UINT      = 7 << 2
    LONG      = 8 << 2
    ULONG     = 9 << 2
    INT64     = 10 << 2
    UINT64    = 11 << 2
    ENUM      = 12 << 2
    FLAGS     = 13 << 2
    FLOAT     = 14 << 2
    DOUBLE    = 15 << 2
    UTF8      = 16 << 2
    POINTER   = 17 << 2
    BOXED     = 18 << 2
    PARAM     = 19 << 2
    OBJECT    = 20 << 2
    VARIANT   = 21 << 2

    def self.gtype
      new LibGObject.gtype_get_type
    end

    def gtype?
      value == LibGObject.gtype_get_type
    end

    def fundamental
      Type.new GObject.type_fundamental(value)
    end

    def fundamental?
      fundamental == value
    end
  end
end
