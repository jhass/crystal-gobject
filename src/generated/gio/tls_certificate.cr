module Gio
  class TlsCertificate < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::TlsCertificate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::TlsCertificate*)
    end

    def certificate
      gvalue = GObject::Value.new(GObject::Type::ARRAY)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "certificate", gvalue)
      gvalue
    end

    def certificate_pem
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "certificate_pem", gvalue)
      gvalue.string
    end

    def issuer
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "issuer", gvalue)
      Gio::TlsCertificate.cast(gvalue.object)
    end



    def self.new_from_file(file) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_certificate_new_from_file(file.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::TlsCertificate.new(__return_value)
    end

    def self.new_from_files(cert_file, key_file) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_certificate_new_from_files(cert_file.to_unsafe, key_file.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::TlsCertificate.new(__return_value)
    end

    def self.new_from_pem(data, length) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_certificate_new_from_pem(data.to_unsafe, Int64.new(length), pointerof(__error))
      GLib::Error.assert __error
      cast Gio::TlsCertificate.new(__return_value)
    end

    def self.list_new_from_file(file) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_certificate_list_new_from_file(file.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      GLib::ListIterator(Gio::TlsCertificate, LibGio::TlsCertificate**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def issuer
      __return_value = LibGio.tls_certificate_get_issuer(@pointer.as(LibGio::TlsCertificate*))
      Gio::TlsCertificate.new(__return_value)
    end

    def same?(cert_two)
      __return_value = LibGio.tls_certificate_is_same(@pointer.as(LibGio::TlsCertificate*), cert_two.to_unsafe.as(LibGio::TlsCertificate*))
      __return_value
    end

    def verify(identity, trusted_ca)
      __return_value = LibGio.tls_certificate_verify(@pointer.as(LibGio::TlsCertificate*), identity ? identity.to_unsafe.as(LibGio::SocketConnectable*) : nil, trusted_ca ? trusted_ca.to_unsafe.as(LibGio::TlsCertificate*) : nil)
      __return_value
    end

  end
end

