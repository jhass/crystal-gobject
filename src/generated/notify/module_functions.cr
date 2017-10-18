module Notify
  def self.app_name
    __return_value = LibNotify.get_app_name
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.server_caps
    __return_value = LibNotify.get_server_caps
    GLib::ListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.server_info(ret_name, ret_vendor, ret_version, ret_spec_version)
    __return_value = LibNotify.get_server_info(ret_name, ret_vendor, ret_version, ret_spec_version)
    __return_value
  end

  def self.init(app_name)
    __return_value = LibNotify.init(app_name.to_unsafe)
    __return_value
  end

  def self.initted?
    __return_value = LibNotify.is_initted
    __return_value
  end

  def self.set_app_name(app_name)
    LibNotify.set_app_name(app_name.to_unsafe)
    nil
  end

  def self.uninit
    LibNotify.uninit
    nil
  end
end

