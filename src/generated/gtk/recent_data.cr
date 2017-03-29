module Gtk
  class RecentData
    include GObject::WrappedType

    def self.new(display_name : String|Nil = nil, description : String|Nil = nil, mime_type : String|Nil = nil, app_name : String|Nil = nil, app_exec : String|Nil = nil, groups : Array(String)|Nil = nil, is_private : Bool|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(56, 0u8)
      new(ptr.as(LibGtk::RecentData*)).tap do |object|
        object.display_name = display_name unless display_name.nil?
        object.description = description unless description.nil?
        object.mime_type = mime_type unless mime_type.nil?
        object.app_name = app_name unless app_name.nil?
        object.app_exec = app_exec unless app_exec.nil?
        object.groups = groups unless groups.nil?
        object.is_private = is_private unless is_private.nil?
      end
    end

    @gtk_recent_data : LibGtk::RecentData*?
    def initialize(@gtk_recent_data : LibGtk::RecentData*)
    end

    def to_unsafe
      @gtk_recent_data.not_nil!
    end

    def display_name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::RecentData*).value.display_name); ::String.new((to_unsafe.as(LibGtk::RecentData*).value.display_name)))
    end

    def display_name=(value : String)
      to_unsafe.as(LibGtk::RecentData*).value.display_name = value
    end

    def description
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::RecentData*).value.description); ::String.new((to_unsafe.as(LibGtk::RecentData*).value.description)))
    end

    def description=(value : String)
      to_unsafe.as(LibGtk::RecentData*).value.description = value
    end

    def mime_type
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::RecentData*).value.mime_type); ::String.new((to_unsafe.as(LibGtk::RecentData*).value.mime_type)))
    end

    def mime_type=(value : String)
      to_unsafe.as(LibGtk::RecentData*).value.mime_type = value
    end

    def app_name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::RecentData*).value.app_name); ::String.new((to_unsafe.as(LibGtk::RecentData*).value.app_name)))
    end

    def app_name=(value : String)
      to_unsafe.as(LibGtk::RecentData*).value.app_name = value
    end

    def app_exec
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::RecentData*).value.app_exec); ::String.new((to_unsafe.as(LibGtk::RecentData*).value.app_exec)))
    end

    def app_exec=(value : String)
      to_unsafe.as(LibGtk::RecentData*).value.app_exec = value
    end

    def groups
      PointerIterator.new((to_unsafe.as(LibGtk::RecentData*).value.groups)) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def groups=(value : Array(String))
      to_unsafe.as(LibGtk::RecentData*).value.groups = value
    end

    def is_private
      (to_unsafe.as(LibGtk::RecentData*).value.is_private)
    end

    def is_private=(value : Bool)
      to_unsafe.as(LibGtk::RecentData*).value.is_private = value
    end

  end
end

