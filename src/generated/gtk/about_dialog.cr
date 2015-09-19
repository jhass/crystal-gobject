require "./dialog"

module Gtk
  class AboutDialog < Dialog
    def initialize @gtk_about_dialog
    end

    def to_unsafe
      @gtk_about_dialog.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable















    def self.new_internal
      __return_value = LibGtk.about_dialog_new
      Gtk::Widget.new(__return_value)
    end

    def add_credit_section(section_name, people)
      __return_value = LibGtk.about_dialog_add_credit_section((to_unsafe as LibGtk::AboutDialog*), section_name, people)
      __return_value
    end

    def artists
      __return_value = LibGtk.about_dialog_get_artists((to_unsafe as LibGtk::AboutDialog*))
      PointerIterator.new(__return_value) {|__item_87| raise "Expected string but got null" unless __item_87; String.new(__item_87) }
    end

    def authors
      __return_value = LibGtk.about_dialog_get_authors((to_unsafe as LibGtk::AboutDialog*))
      PointerIterator.new(__return_value) {|__item_11| raise "Expected string but got null" unless __item_11; String.new(__item_11) }
    end

    def comments
      __return_value = LibGtk.about_dialog_get_comments((to_unsafe as LibGtk::AboutDialog*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def copyright
      __return_value = LibGtk.about_dialog_get_copyright((to_unsafe as LibGtk::AboutDialog*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def documenters
      __return_value = LibGtk.about_dialog_get_documenters((to_unsafe as LibGtk::AboutDialog*))
      PointerIterator.new(__return_value) {|__item_20| raise "Expected string but got null" unless __item_20; String.new(__item_20) }
    end

    def license
      __return_value = LibGtk.about_dialog_get_license((to_unsafe as LibGtk::AboutDialog*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def license_type
      __return_value = LibGtk.about_dialog_get_license_type((to_unsafe as LibGtk::AboutDialog*))
      __return_value
    end

    def logo
      __return_value = LibGtk.about_dialog_get_logo((to_unsafe as LibGtk::AboutDialog*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def logo_icon_name
      __return_value = LibGtk.about_dialog_get_logo_icon_name((to_unsafe as LibGtk::AboutDialog*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def program_name
      __return_value = LibGtk.about_dialog_get_program_name((to_unsafe as LibGtk::AboutDialog*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def translator_credits
      __return_value = LibGtk.about_dialog_get_translator_credits((to_unsafe as LibGtk::AboutDialog*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def version
      __return_value = LibGtk.about_dialog_get_version((to_unsafe as LibGtk::AboutDialog*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def website
      __return_value = LibGtk.about_dialog_get_website((to_unsafe as LibGtk::AboutDialog*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def website_label
      __return_value = LibGtk.about_dialog_get_website_label((to_unsafe as LibGtk::AboutDialog*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def wrap_license
      __return_value = LibGtk.about_dialog_get_wrap_license((to_unsafe as LibGtk::AboutDialog*))
      __return_value
    end

    def artists=(artists)
      __return_value = LibGtk.about_dialog_set_artists((to_unsafe as LibGtk::AboutDialog*), artists)
      __return_value
    end

    def authors=(authors)
      __return_value = LibGtk.about_dialog_set_authors((to_unsafe as LibGtk::AboutDialog*), authors)
      __return_value
    end

    def comments=(comments)
      __return_value = LibGtk.about_dialog_set_comments((to_unsafe as LibGtk::AboutDialog*), comments && comments)
      __return_value
    end

    def copyright=(copyright)
      __return_value = LibGtk.about_dialog_set_copyright((to_unsafe as LibGtk::AboutDialog*), copyright && copyright)
      __return_value
    end

    def documenters=(documenters)
      __return_value = LibGtk.about_dialog_set_documenters((to_unsafe as LibGtk::AboutDialog*), documenters)
      __return_value
    end

    def license=(license)
      __return_value = LibGtk.about_dialog_set_license((to_unsafe as LibGtk::AboutDialog*), license && license)
      __return_value
    end

    def license_type=(license_type)
      __return_value = LibGtk.about_dialog_set_license_type((to_unsafe as LibGtk::AboutDialog*), license_type)
      __return_value
    end

    def logo=(logo)
      __return_value = LibGtk.about_dialog_set_logo((to_unsafe as LibGtk::AboutDialog*), logo && (logo.to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def logo_icon_name=(icon_name)
      __return_value = LibGtk.about_dialog_set_logo_icon_name((to_unsafe as LibGtk::AboutDialog*), icon_name && icon_name)
      __return_value
    end

    def program_name=(name)
      __return_value = LibGtk.about_dialog_set_program_name((to_unsafe as LibGtk::AboutDialog*), name)
      __return_value
    end

    def translator_credits=(translator_credits)
      __return_value = LibGtk.about_dialog_set_translator_credits((to_unsafe as LibGtk::AboutDialog*), translator_credits && translator_credits)
      __return_value
    end

    def version=(version)
      __return_value = LibGtk.about_dialog_set_version((to_unsafe as LibGtk::AboutDialog*), version && version)
      __return_value
    end

    def website=(website)
      __return_value = LibGtk.about_dialog_set_website((to_unsafe as LibGtk::AboutDialog*), website && website)
      __return_value
    end

    def website_label=(website_label)
      __return_value = LibGtk.about_dialog_set_website_label((to_unsafe as LibGtk::AboutDialog*), website_label)
      __return_value
    end

    def wrap_license=(wrap_license)
      __return_value = LibGtk.about_dialog_set_wrap_license((to_unsafe as LibGtk::AboutDialog*), Bool.new(wrap_license))
      __return_value
    end

  end
end

