require "./g_object/wrapped_type"

module GObject
  LOADED_NAMESPACES = [] of String
end

macro require_gobject(namespace)
  {% unless GObject::LOADED_NAMESPACES.includes?(namespace) %}
    {% GObject::LOADED_NAMESPACES << namespace %}
    {{run "./generator/build_namespace", namespace}}
    {% debug() %}
  {% end %}
end
