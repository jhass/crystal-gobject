file = ARGV[0]
print "Compiling #{file}... "
status = Process.run("crystal build '#{file}'", shell: true, output: :inherit, error: :inherit)
puts status.success? ? "ok." : "failed."
exit 1 unless status.success?
print "Running #{file}... "
exe = File.basename file, ".cr"
proc = Process.new("./#{exe}", shell: true, output: :inherit, error: :inherit)
sleep 5
success = proc.exists?
puts success ? "ok." : "failed."
exit 1 unless success
proc.kill
proc.wait
