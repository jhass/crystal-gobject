class GError < Exception
  def initialize gerror : LibGLib::GError*
    super String.new(gerror.value.message)
  end
end
