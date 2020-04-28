require "../gobject"
require_gobject "Gdk"

require "./event"

module Gdk
  def self.init
    LibGdk.init pointerof(ARGC_UNSAFE), pointerof(ARGV_UNSAFE)
  end
end
