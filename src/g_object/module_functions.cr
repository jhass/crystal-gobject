module GObject
  def self.type_from_name(name)
    gtype = LibGObject.type_from_name(name)
    abort "No GType for #{name} found\n#{caller.join("\n")}" if gtype == 0
    gtype
  end

  def self.type_name(gtype)
    ptr = LibGObject.type_name(gtype)
    String.new ptr if ptr
  end
end
