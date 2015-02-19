module GLib
  class Error #< Exception
    def self.assert error
      raise Exception.new(::String.new(error.value.message)) if error
    end

    # def initialize error : LibGLib::GError*
    #   super ::String.new(error.value.message)
    # end
  end
end
