require "./base_info"

module GIRepository
  class VFuncInfo < BaseInfo
    def lib_definition(builder)
      builder.comment "Virtual function #{name}"
    end
  end
end
