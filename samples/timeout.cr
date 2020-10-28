require "gobject/g_lib"

GLib.timeout(1.second) do
  puts "Every second"
  true
end


GLib.timeout(1.5.seconds) do
  puts "Every 1.5 seconds"
  true
end

GLib.timeout_seconds(2) do
  puts "Every 2 seconds"
  true
end

GLib.timeout_milliseconds(2500) do
  puts "Exactly every 2.5 seconds"
  true
end

# Make sure Crystal's signal handler fiber gets a chance to run
GLib.idle_add do
  Fiber.yield
  true
end

main_loop = GLib::MainLoop.new(nil, false)
Signal::INT.trap {
  main_loop.quit
}
main_loop.run
