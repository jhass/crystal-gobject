require "./base_info"

module GIRepository
  class VFuncInfo < BaseInfo
    def lib_definition
      "  # Virtual function #{name}"
    end
  end
end
