module Gtk
  class RecentFilterInfo
    include GObject::WrappedType

    def self.new(contains : Gtk::RecentFilterFlags|Nil = nil, uri : String|Nil = nil, display_name : String|Nil = nil, mime_type : String|Nil = nil, applications : Array(String)|Nil = nil, groups : Array(String)|Nil = nil, age : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(56, 0u8)
      new(ptr.as(LibGtk::RecentFilterInfo*)).tap do |object|
        object.contains = contains unless contains.nil?
        object.uri = uri unless uri.nil?
        object.display_name = display_name unless display_name.nil?
        object.mime_type = mime_type unless mime_type.nil?
        object.applications = applications unless applications.nil?
        object.groups = groups unless groups.nil?
        object.age = age unless age.nil?
      end
    end

    @gtk_recent_filter_info : LibGtk::RecentFilterInfo*?
    def initialize(@gtk_recent_filter_info : LibGtk::RecentFilterInfo*)
    end

    def to_unsafe
      @gtk_recent_filter_info.not_nil!
    end

    def contains
      (to_unsafe.as(LibGtk::RecentFilterInfo*).value.contains)
    end

    def contains=(value : Gtk::RecentFilterFlags)
      to_unsafe.as(LibGtk::RecentFilterInfo*).value.contains = value
    end

    def uri
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::RecentFilterInfo*).value.uri); ::String.new((to_unsafe.as(LibGtk::RecentFilterInfo*).value.uri)))
    end

    def uri=(value : String)
      to_unsafe.as(LibGtk::RecentFilterInfo*).value.uri = value.to_unsafe
    end

    def display_name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::RecentFilterInfo*).value.display_name); ::String.new((to_unsafe.as(LibGtk::RecentFilterInfo*).value.display_name)))
    end

    def display_name=(value : String)
      to_unsafe.as(LibGtk::RecentFilterInfo*).value.display_name = value.to_unsafe
    end

    def mime_type
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::RecentFilterInfo*).value.mime_type); ::String.new((to_unsafe.as(LibGtk::RecentFilterInfo*).value.mime_type)))
    end

    def mime_type=(value : String)
      to_unsafe.as(LibGtk::RecentFilterInfo*).value.mime_type = value.to_unsafe
    end

    def applications
      PointerIterator.new((to_unsafe.as(LibGtk::RecentFilterInfo*).value.applications)) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def applications=(value : Array(String))
      to_unsafe.as(LibGtk::RecentFilterInfo*).value.applications = value
    end

    def groups
      PointerIterator.new((to_unsafe.as(LibGtk::RecentFilterInfo*).value.groups)) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def groups=(value : Array(String))
      to_unsafe.as(LibGtk::RecentFilterInfo*).value.groups = value
    end

    def age
      (to_unsafe.as(LibGtk::RecentFilterInfo*).value.age)
    end

    def age=(value : Int32)
      to_unsafe.as(LibGtk::RecentFilterInfo*).value.age = Int32.new(value)
    end

  end
end

