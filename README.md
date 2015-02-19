# gobject-introspection for [Crystal](http://crystal-lang.org)

This is a proof of concept, nothing real world usable.
If you want to turn it into something usable, feel free to do so.
If you want to hack on it and make some
generally useful progress, pull requests are welcome!

## State & Wishlist

* Generates bindings that parse, but are probably not complete or bug free.
* Generates bindings for gobject-introspection that are useable by the glue & generation
  code that generates them.
* Generates bindings and wrappers for Gtk that, together with some hand-written glue code
  can show a blank window and load a glade file.
* Generates not only the lib code, but also the boilerplate for the glue code (WIP, not complete)
* Should figure out dependencies the smart way, that is only generate bindings
  for dependencies that are actually used in the binding.
* Should figure out link flags for when gi_repository_get_shared_library
  return NULL, or at least not crash on that.
