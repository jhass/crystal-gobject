module Gdk
  module DevicePad
    def feature_group(feature : Gdk::DevicePadFeature, feature_idx)
      __return_value = LibGdk.device_pad_get_feature_group(@pointer.as(LibGdk::DevicePad*), feature, Int32.new(feature_idx))
      __return_value
    end

    def group_n_modes(group_idx)
      __return_value = LibGdk.device_pad_get_group_n_modes(@pointer.as(LibGdk::DevicePad*), Int32.new(group_idx))
      __return_value
    end

    def n_features(feature : Gdk::DevicePadFeature)
      __return_value = LibGdk.device_pad_get_n_features(@pointer.as(LibGdk::DevicePad*), feature)
      __return_value
    end

    def n_groups
      __return_value = LibGdk.device_pad_get_n_groups(@pointer.as(LibGdk::DevicePad*))
      __return_value
    end

  end
end

