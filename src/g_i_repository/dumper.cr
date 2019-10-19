module GIRepository
  class Dumper
    macro def
      def dump(dumper, & : BaseInfo ->)
        super(dumper) {|i| yield i }
        {{yield}}
      end
    end

    macro dump_childs(kind, plural=nil)
      {% plural = plural ? plural : "#{kind}s".id %}
      if {{plural}}_size > 0
        dumper.puts "* {{plural}}"
        dumper.nest(2) do
          each_{{kind}} {|c| yield c }
        end
      end
    end

    macro dump_child(name)
      %child = {{name}}
      if %child
        dumper.puts "* {{name}}"
        dumper.nest(2) do
          yield %child
        end
      end
    end

    getter io

    @nesting = [] of BaseInfo
    @indent = 0
    @max_nesting = 3

    def initialize(@io : IO)
    end

    def initialize(@io : IO, @max_nesting : Int32?)
    end

    def puts(str)
      @io << indent
      @io.puts str
    end

    def nest(inc=1)
      @indent += inc
      yield
      @indent -= inc
    end

    def base_indent
      "  " * (@indent - 1)
    end

    def indent
      "  " * @indent
    end

    def nesting_limit?
      max_nesting = @max_nesting
      return false unless max_nesting
      @nesting.size >= max_nesting
    end

    def dump(info)
      @nesting << info
      nest do
        info.dump(self) do |child|
          next unless child

          if @nesting.includes?(child)
            child.dump_base(self)
            puts "<...> (self referential)"
            next
          end

          if nesting_limit?
            child.dump_base(self)
            next
          end

          dump(child)
        end
      end
      @nesting.pop
    end
  end
end