# gobject-introspection for [Crystal](http://crystal-lang.org)

The primary purpose of this shard is to provide compile-time generated
bindings to libraries supporting GObject Introspection, so for example Gtk.

Secondarily this project also aims to provide hand written extensions and
overrides for the more popular GObject based libraries that make the bindings
more friendly to use and allow users to write more idiomatic Crystal.
In the midterm these should be extracted to their own shards that depend on this one.

This should be useable for simple projects but usually still requires familarity with
the C interface and usage of the original library. There's most likely still
incorrect code generated, some methods may not even compile when invoked as
Crystal does semantic checks only then. So this should be considered a work in
progress and contributions are very welcome!

## Install

Install like any other shard. Additionally you'll need gobject-introspection installed
as well as the GObject based library you want to use and its typelib file needs to be
available.

### Debian

```
sudo apt install libgirepository1.0-dev
```

## Usage

Include in your shard.yml:
```yaml
dependencies:
  gobject:
    github: jhass/crystal-gobject
    branch: 0.3.1
```

For libraries that have convenience wrappers you just require them under the `goject`
namespace. For example:

```cr
require "gobject/gdk"
```

Gtk specifically has a convenience wrapper that starts the mainloop automatically:

```cr
require "gobject/gtk/autorun"
```

However the main entry point is the `require_gobject` macro:


```cr
require "gobject"
require_gobject "Gio"
```

This will replace itself with the entire generated binding code for, in this case,
Gio and its dependencies.

There's a very work in progress documentation generator under the `gi-doc` target.
Note it is a modified version of the Crystal compiler's doc generator and thus
compiles almost the entire compiler, thus compiling this tool takes as much time
and resources as compiling the compiler does. Also libraries as Gtk are huge! Generating
for Gtk and its dependencies will take a long time and generate about a gigabyte
of documentation.

### Samples

Clone the repo and give the samples a try:
```
crystal run samples/gtk_hello_world.cr
```

To run the samples you will also need the gtk development library.

On Debian you can install it like so:
```
sudo apt install libgtk-3-dev
```

## Contributing

Pull requests are welcome! If you encounter a bug, the first step is to produce
the most minimal example that reproduces it. Currently this has no testsuite,
so the samples funciton as a sort of manual testsuite. That means including this minimal
example into an issue or pull request will not only allow others to verify the bug,
but also prevent it from reappearing as a regression.

Running `src/generator/build_namespace.cr` directly is a good way to inspect the generated code.
An alternative is to add `{% debug() %}` to the end of the `require_gobject`
macro definition in `src/gobject.cr`.

### Architecture

gobject-introspection is itself a C library, so we need to have bindings for it.
It is itself introspectable and we make use of that, however there's a bootstrapping
problem if we would try to use the main `require_gobject` macro for that, there are
no bindings for what it's based on! So we have a second generator that writes the output
to static files under `src/generated` under the target `gi-generator`. The initial version
of this was bootstrapped using hand-written bindings. A good quick check whether any changes
you did still work, is to build and run this target twice, the first time to update the generated
bindings and the second time to see if they still compile and produce the same output.

`src/generator` has the driver code for any of the generators and tools. `src/g_i_repository`
contains the classes that define the Crystal code for each of the GObject Introspection info types.

The `gi-dump` target tries to completely map out all info that's present in a typelib, that is
how the current bindings see that info. Look at its options, you'll need to make use
of them to drill in, otherwise it's just too much output due to how it displays
the same infos all over again and again recursively.

For now convenience extensions and overrides go under `src/library_name`, so for example `src/gtk` for Gtk or `src/g_lib` for GLib.
The future prospect is to have them live in their own shards that depend on this one.

## Library specific shards

Like mentioned above, we want shards that collect any convenience extensions and overrides to the code this library generates.
Here's a well known list of  them:

- [cairo-gobject](https://github.com/viachpaliy/cairo-gobject) - Cairo bindings for crystal-gobject.
