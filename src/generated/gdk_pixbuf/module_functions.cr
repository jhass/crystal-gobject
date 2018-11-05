module GdkPixbuf
  PIXBUF_FEATURES_H = LibGdkPixbuf::PIXBUF_FEATURES_H

  PIXBUF_MAJOR = LibGdkPixbuf::PIXBUF_MAJOR

  PIXBUF_MICRO = LibGdkPixbuf::PIXBUF_MICRO

  PIXBUF_MINOR = LibGdkPixbuf::PIXBUF_MINOR

  PIXBUF_VERSION = LibGdkPixbuf::PIXBUF_VERSION

  def self.pixbuf_error_quark
    __return_value = LibGdkPixbuf.pixbuf_error_quark
    __return_value
  end
end

