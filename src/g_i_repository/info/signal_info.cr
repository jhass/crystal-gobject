require "./base_info"

module GIRepository
  class SignalInfo < BaseInfo
    def lib_definition
      "  # Signal #{name}"
    end
  end
end
