require "./pointer_iterator"
require "./closure_data_manager"
require "./wrapped_type"

module GObject
  VERSION = "0.10.0"
  # :nodoc:
  LOADED_NAMESPACES = [] of String

  # :nodoc:
  def self.raise_unexpected_null(symbol : String)
    raise <<-EOF
      An unexpected null pointer was returned from #{symbol}.

      This means that there is a missing may return null annotation in the GIR
      file defining this function. Please report this as a bug upstream.

      For now please manually override the generated wrapper method with one that
      handles the null pointer. You may also want to upstream this override to the
      shard maintaining manual overrides for the respective library.
      EOF
  end
end

macro require_gobject(namespace, version = nil)
  require "gobject/g_object"
  {% unless GObject::LOADED_NAMESPACES.includes?(namespace) %}
    {% GObject::LOADED_NAMESPACES << namespace %}
    {% if version %}
      {{run "gobject/generator/build_namespace", namespace, version}}
    {% else %}
      {{run "gobject/generator/build_namespace", namespace}}
    {% end %}
  {% end %}
end
