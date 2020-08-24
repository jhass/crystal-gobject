require "spec"

require "gobject/gobject"

@[Link(ldflags: "-L#{__DIR__}/build")]
lib LibTest
end

require_gobject("Test")
