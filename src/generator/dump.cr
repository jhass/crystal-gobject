require "option_parser"
require "../crout"
require "../g_i_repository"

opt_root = nil
max_nesting = 3
all = false
opt_namespace = nil

OptionParser.parse do |p|
  p.banner = "Usage: gi-dump [opts] NAMESPACE[-VERSION]"
  p.on("-r NAME", "--root=NAME", "Only print given toplevel info instead of all") { |name| opt_root = name }
  p.on("-n LIMIT", "--nesting=LIMIT", "Stop after LIMIT recursions (default 3)") { |limit| max_nesting = limit.to_i? }
  p.on("-a", "--all", "Don't limit nesting, print all") { all = true }
  p.on("-h", "--help", "Show this help") do
    puts p
    exit
  end
  p.unknown_args do |args|
    opt_namespace = args.first?
    if args.size > 1
      STDERR.puts "Too many arguments"
      exit 1
    end
  end
end

unless namespace = opt_namespace
  STDERR.puts "Missing namespace"
  exit 1
end

unless max_nesting
  STDERR.puts "Invalid recursion limit"
  exit 1
end

namespace, version = namespace.split("-", 2) if namespace.includes?('-')

repo = GIRepository::Repository.instance
repo.require namespace, version
dumper = GIRepository::Dumper.new(STDOUT, all ? nil : max_nesting)
if root = opt_root
  info = repo.find_by_name(namespace, root)
  if info
    info.dump(dumper)
  else
    puts "Couldn't find any info named #{root} in #{namespace}"
    exit 1
  end
else
  repo.all_infos(namespace).each do |info|
    info.dump(dumper)
  end
end
