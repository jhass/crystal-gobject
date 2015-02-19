module Notify
  def self.app_name
    __return_value = LibNotify.get_app_name
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.server_caps
    __return_value = LibNotify.get_server_caps
    __return_value
  end

  def self.server_info(ret_name, ret_vendor, ret_version, ret_spec_version)
    __return_value = LibNotify.get_server_info(ret_name && ret_name, ret_vendor && ret_vendor, ret_version && ret_version, ret_spec_version && ret_spec_version)
    __return_value
  end

  def self.init(app_name)
    __return_value = LibNotify.init(app_name)
    __return_value
  end

  def self.is_initted
    __return_value = LibNotify.is_initted
    __return_value
  end

  def self.set_app_name(app_name)
    __return_value = LibNotify.set_app_name(app_name)
    __return_value
  end

  def self.uninit
    __return_value = LibNotify.uninit
    __return_value
  end
end

