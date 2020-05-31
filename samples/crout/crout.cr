require "gobject/crout"

Crout.build(STDOUT) do
  section do
    foo = line assign_var(literal(1))
    line call("puts", foo)
  end

  source_location("unicorn.cr") do
    def_module("Foo") do
      def_class("Bar") do
        def_method("hello", arg("name")) do
          name = line assign_var(var("name"))
          line call("puts", literal("Hello #{interpolation(name)}"))
        end

        def_method("test")
      end

      def_struct("Baz") { }

      write_annotation("Link", literal("foo"))
      write_annotation("Link", literal("bar"))
      def_lib("LibNone") { }
    end
  end

  section do
    bar = line assign_var(call("new", receiver: "Foo::Bar"))
    line call("hello", literal("John"), receiver: bar)
    line call("test", receiver: bar)
  end

  section do
    line def_if(call("==", literal("hello"), receiver: call("[]?", literal(0), receiver: var("ARGV")))) { |b|
      b.line b.call("puts", b.literal("Hi!"))
    }.elsif(call("==", literal("bye"), receiver: call("[]?", literal(0), receiver: var("ARGV")))) { |b|
      b.line b.call("puts", b.literal("Ciao!"))
    }.else { |b|
      b.line b.call("puts", b.literal("Uh..."))
    }
  end

  section do
    def_method("baz") do
      line call("puts", invoke_yield(literal("test")))
    end
    line

    line call("baz") { |b|
      b.line b.literal("Hello")
    }

    item = declare_var
    line call("baz", block_args: {item}) { |b|
      b.line b.call "upcase", receiver: item
    }
  end
end
