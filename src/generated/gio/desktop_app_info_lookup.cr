module Gio
  module DesktopAppInfoLookup
    def default_for_uri_scheme(uri_scheme)
      __return_value = LibGio.desktop_app_info_lookup_get_default_for_uri_scheme(@pointer.as(LibGio::DesktopAppInfoLookup*), uri_scheme.to_unsafe)
      __return_value
    end

  end
end

