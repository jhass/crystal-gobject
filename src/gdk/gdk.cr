require "../gobject"
require_gobject "Gdk", "3.0"

require "./event"

module Gdk
  def self.init
    argv = [PROGRAM_NAME]
    argv.concat(ARGV)
    argc = argv.size
    unsafe_argv = argv.map(&.to_unsafe).to_unsafe
    LibGdk.init pointerof(argc), pointerof(unsafe_argv)
  end
end
