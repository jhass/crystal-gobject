# A basic, experimental and ugly DSL to write Crystal code using Crystal code
class Crout
  enum Type
    Module
    Class
    Struct
    Enum
    Union
    Lib
  end

  enum ArgPrefix
    None
    Splat
    KeywordSplat
    BlockCapture
  end

  record ArgDef,
    name : String?,
    external : String?,
    type : String?,
    default : String?,
    prefix : ArgPrefix do
    def to_s(io)
      case prefix
      when .none?
      when .splat?
        io << '*'
      when .keyword_splat?
        io << "**"
      when .block_capture?
        io << '&'
      end

      io << external << ' ' if external
      io << name
      io << " : " << type if type
      io << " = " << default if default
    end
  end

  class Expression
    def initialize(@builder : Crout ->)
    end

    def to_s(io : IO)
      write Crout.new(io)
    end

    def write(writer : Crout)
      @builder.call(writer)
    end
  end

  class IfExpression < Expression
    @elsifs = [] of IfExpression
    @else : Proc(Crout, Nil)? = nil

    def initialize(@condition : String | Expression, @builder : Crout ->)
    end

    def elsif(condition, &true_branch : Crout ->)
      @elsifs << IfExpression.new(condition, true_branch)
      self
    end

    def else(&@else : Crout ->)
      self
    end

    def write(b : Crout)
      if (condition = @condition) && condition.is_a?(NegateExpression) && @elsifs.empty?
        b.write "unless "
        condition.inner(b)
        b.write '\n'
      else
        b.write "if ", @condition, '\n'
      end
      b.indented { @builder.call(b) }

      @elsifs.each do |the_elsif|
        b.line "elsif ", the_elsif.@condition
        b.indented { the_elsif.@builder.call(b) }
      end

      if the_else = @else
        b.line "else"
        b.indented { the_else.call(b) }
      end

      b.line "end"
    end
  end

  class NegateExpression < Expression
    def write(b : Crout)
      b.write "!("
      inner(b)
      b.write ')'
    end

    def inner(b : Crout)
      @builder.call(b)
    end
  end

  class VarPool
    PREFIX = "__var"

    @counter = 0

    def obtain
      "#{PREFIX}#{@counter}".tap { @counter += 1 }
    end

    def reset
      @counter = 0
    end

    def register(name : String)
      if name.starts_with?(PREFIX) && (counter = name.lchop(PREFIX).to_i?)
        @counter = counter + 1 if counter > @counter
      end
    end
  end

  def self.build
    String.build { |io|
      build(io) { |builder|
        with builder yield builder
      }
    }
  end

  def self.build(io : IO)
    builder = new(io)
    with builder yield builder
    io
  end

  @current_indent = 0
  @first_section = true
  @skip_next_section_separator = false
  @var_pool = VarPool.new
  @end_of_line_comment : String? = nil
  @section_line_count = 0
  @write_ops = 0

  def initialize(@io : IO)
  end

  def def_module(name)
    def_type(:module, name) { with self yield self }
  end

  def def_class(name, parent : String? = nil)
    def_type(:class, name, parent: parent) { with self yield self }
  end

  def def_struct(name, parent : String? = nil)
    def_type(:struct, name, parent: parent) { with self yield self }
  end

  def def_enum(name, type : String? = nil)
    def_type(:enum, name, type: type) { with self yield self }
  end

  def def_union(name)
    def_type(:union, name) { with self yield self }
  end

  def def_lib(name)
    def_type(:lib, name) { with self yield self }
  end

  def def_type(kind : Type, name, parent : String? = nil, type : String? = nil)
    section do
      line do
        case kind
        when .module?
          write "module"
        when .class?
          write "class"
        when .struct?
          write "struct"
        when .enum?
          write "enum"
        when .union?
          write "union"
        when .lib?
          write "lib"
        end

        write ' ', name
        write " < ", parent if parent
        write " : ", type if type
      end

      indented { yield self }
      line "end"
    end
  end

  def write_annotation(name, *args, **kwargs)
    self.annotation(name, *args)
  end

  def annotation(name, *args, **kwargs)
    args = args.to_a + kwargs.map { |k, v| "#{k}: #{v}" }
    attach_to_next_section do
      line do
        write "@[", name, '('
        join(args, sep: ", ")
        write ")]"
      end
    end
  end

  def add_include(constant)
    line "include ", constant
  end

  def def_method(name, *args : ArgDef, class_method = false, return_type : String? = nil)
    def_method(name, args, class_method: class_method, return_type: return_type) { }
  end

  def def_method(name, *args : ArgDef, class_method = false, return_type : String? = nil)
    def_method(name, args, class_method: class_method, return_type: return_type) { with self yield self }
  end

  def def_method(name, args : Enumerable(ArgDef)? = nil, class_method = false, return_type : String? = nil)
    def_method(name, args, class_method: class_method, return_type: return_type) { }
  end

  def def_method(name, args : Enumerable(ArgDef)? = nil, class_method = false, return_type : String? = nil)
    section(new_scope: true) do
      line do
        write "def "
        write "self." if class_method
        write name
        if args && !args.empty?
          write '('
          join(args, sep: ", ")
          write ')'
          args.each { |arg| @var_pool.register name if name = arg.name }
        end
        write " : ", return_type if return_type
      end
      indented { with self yield self }
      line "end"
    end
  end

  def fun_binding(symbol, *args : ArgDef, name = symbol, return_type : String? = nil)
    fun_binding(symbol, args, name: name, return_type: return_type)
  end

  def fun_binding(symbol, args : Enumerable(ArgDef)? = nil, name = symbol, return_type : String? = nil)
    line do
      write "fun "
      write name, " = " if name != symbol
      write symbol
      if args && !args.empty?
        write '('
        join(args, sep: ", ")
        write ')'
      end
      write " : ", return_type if return_type
    end
  end

  def field_binding(name, type)
    line name, " : ", type
  end

  def def_alias(name, type)
    line "alias ", name, " = ", type
  end

  def def_proc(args, &body : Crout ->)
    expression do |b|
      b.write "-> "
      if args && !args.empty?
        b.write '('
        b.join(args, sep: ", ")
        b.write ") "
      end
      b.write "{\n"
      b.indented { body.call(b) }
      b.line "}"
    end
  end

  def proc_type(*args : String, return_type : String? = nil)
    proc_type(args, return_type: return_type)
  end

  def proc_type(args : Enumerable(String)? = nil, return_type : String? = nil)
    expression do |b|
      if args && !args.empty?
        join(args, sep: ", ")
        write ' '
      end
      write "->"
      write ' ', return_type if return_type
    end
  end

  def arg(name, *, external : String? = nil, type = nil, default : String? = nil, prefix : ArgPrefix = ArgPrefix::None)
    ArgDef.new(name, external, type, default, prefix)
  end

  def call(name, *args, receiver : String | Expression? = nil)
    _call(name, args, receiver: receiver) { }
  end

  def call(name, args : Enumerable, receiver : String | Expression? = nil)
    _call(name, args, receiver: receiver) { }
  end

  def call(name, *args, receiver : String | Expression? = nil, block_args : Enumerable(String)? = nil, &block : Crout ->)
    call(name, args, receiver: receiver, block_args: block_args, &block)
  end

  def call(name, args : Enumerable, receiver : String | Expression? = nil, block_args : Enumerable(String)? = nil, &block : Crout ->)
    _call(name, args, receiver: receiver) do |b|
      b.write " {"
      if (bargs = block_args) && !bargs.empty?
        b.write " |"
        b.join(bargs, sep: ", ")
        b.write '|'
      end
      b.write '\n'
      b.indented { block.call(b) }
      b.write_indent
      b.write "}"
    end
  end

  private def _call(name, args, receiver : String | Expression? = nil, &block : Crout ->)
    subscript = receiver && name[0] == '['
    operator = receiver && {'=', '-', '+', '*', '/', '&', '<', '>'}.includes? name[0]
    keyword = receiver.nil? && name == "require"
    call_args = Array(Expression | String).new
    args.each do |arg|
      if arg.is_a?(NamedTuple) || arg.is_a?(Hash)
        arg.each do |k, v|
          call_args << expression { |b|
            b.write k
            b.write ": "
            b.write v
          }
        end
      elsif arg
        call_args << arg
      end
    end

    expression do |b|
      if subscript
        b.write receiver if receiver
        b.write '['
        b.join(call_args, sep: ", ")
        b.write name.lchop('[')
      elsif operator
        raise ArgumentError.new "operator call #{name} needs exactly one argument" unless args.size == 1
        b.write receiver, ' ' if receiver
        b.write name
        b.write ' ' if receiver # If no receiver this might be a prefix call like: +foo
        b.write call_args.first?
      else
        b.write receiver, '.' if receiver
        b.write name
        b.write keyword ? ' ' : '(' unless args.empty?
        b.join(call_args, sep: ", ")
        b.write ')' unless args.empty? || keyword
      end

      block.call(b)
    end
  end

  def invoke_yield(*args)
    expression do |b|
      b.write "yield"
      unless args.empty?
        b.write '('
        b.join(args, sep: ", ")
        b.write ')'
      end
    end
  end

  def declare_var
    @var_pool.obtain
  end

  def assign_var(expression)
    assign declare_var, expression
  end

  def assign(lhs, rhs)
    expr = expression do |b|
      if (name = lhs) && name.is_a?(String) && name =~ /\A[a-z]\w+\z/
        @var_pool.register(name)
      end
      b.write lhs, " = ", rhs
    end
    {lhs.as(String | Expression), expr.as(String | Expression)} # Cast here so the line overload gets hit
  end

  def def_instance_var(name, type, default : String? = nil)
    expr = expression do |b|
      b.write name, " : ", type
      b.write " = ", default if default
    end

    {name.as(String | Expression), expr.as(String | Expression)}
  end

  def negate(expression)
    NegateExpression.new ->(b : Crout) { b.write expression }
  end

  def literal(value)
    case value
    when Int8
      "#{value}i8"
    when UInt8
      "#{value}u8"
    when Int16
      "#{value}i16"
    when UInt16
      "#{value}u16"
    when Int64
      "#{value}i64"
    when UInt64
      "#{value}u64"
    when String
      %("#{value}")
    else
      value.inspect
    end
  end

  def tuple(expressions)
    return call("new", receiver: "Tuple") if expressions.nil? || expressions.empty?

    expression do |b|
      b.write '{'
      b.join(expressions, sep: ", ")
      b.write '}'
    end
  end

  def interpolation(value)
    "\#{#{value}}"
  end

  def var(name : String)
    name
  end

  def comment(message)
    end_of_line_comment message
    line
  end

  def end_of_line_comment(message)
    @end_of_line_comment = message
  end

  def indented
    previous_indent = @current_indent
    @current_indent += 1
    with self yield self
  ensure
    @current_indent = previous_indent || 0
  end

  def section(new_scope = false)
    write "\n" if @last_section_indent == @current_indent && !@skip_next_section_separator
    old_var_pool = @var_pool
    @var_pool = VarPool.new if new_scope
    @skip_next_section_separator = false
    with self yield self
  ensure
    @last_section_indent = @current_indent
    @var_pool = old_var_pool || VarPool.new if new_scope
  end

  def attach_to_next_section
    write "\n" if @last_section_indent == @current_indent && !@skip_next_section_separator
    with self yield self
    @skip_next_section_separator = true
  end

  def source_location(path, line = 1, col = 1)
    return unless path

    attach_to_next_section do
      line "#<loc:push>", "#<loc:", '"', path, '"', ',', line, ',', col, '>'
    end

    with self yield self
  ensure
    line "#<loc:pop>"
  end

  def expression(&builder : Crout ->)
    Expression.new(builder)
  end

  def ternary(condition, true_branch, false_branch)
    expression &.write condition, " ? ", true_branch, " : ", false_branch
  end

  def conditional_line(condition, *atoms)
    line do
      write(*atoms)
      if condition.is_a?(NegateExpression)
        write " unless "
        condition.inner(self)
      else
        write " if ", condition
      end
    end
  end

  def conditional_line(condition, assign : {String | Expression, String | Expression})
    conditional_line condition, assign[1]
    assign[0]
  end

  def def_if(condition, &true_branch : Crout ->)
    IfExpression.new(condition, true_branch)
  end

  def line
    line { }
  end

  def line(*atoms)
    line { write(*atoms) }
  end

  def line(assign : {String | Expression, String | Expression})
    line assign[1]
    assign[0]
  end

  def line
    write_indent

    has_content = capture_progress { with self yield self } > 0

    if message = @end_of_line_comment
      write ' ' if has_content
      write '#'
      write ' ' unless message.starts_with? '#'
      write message
      @end_of_line_comment = nil
    end

    write "\n"
  end

  # Returns how many write operations were triggered from the passed block.
  def capture_progress
    ops = @write_ops
    with self yield self
    (@write_ops - ops).abs
  end

  def write_indent
    @current_indent.times { write "  " }
  end

  def join(*args, sep : String | Char = "")
    join(args, sep: sep)
  end

  def join(args, *, sep : String | Char = "") : Nil
    return if args.empty?

    first = true
    args.each do |arg|
      write sep unless first
      write arg
      first = false
    end
  end

  def write(*atoms) : Nil
    return if atoms.empty?

    @write_ops &+= 1
    atoms.each { |atom| atom.is_a?(Expression) ? atom.write(self) : @io << atom }
  end
end
