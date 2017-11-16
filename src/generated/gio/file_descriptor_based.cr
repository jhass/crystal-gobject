module Gio
  module FileDescriptorBased
    def fd
      __return_value = LibGio.file_descriptor_based_get_fd(@pointer.as(LibGio::FileDescriptorBased*))
      __return_value
    end

  end
end

