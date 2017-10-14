module ActiveAdmin
  class Codigo5SignatureGenerator < Rails::Generators::Base
    def inject_into_initializer_file
      inject_into_file 'config/initializers/active_admin.rb', after: /(?:.*)\.include_default_association_filters(?:\s*)\=(?:.*)\n/i do <<-'RUBY'

  # == Codigo5 Signature
  #
  # Codigo5 Signature is enabled by default in the footer.
  #
  # You can disable it from here
  #
  # config.codigo5_signature false
  #
  # or you can control the widget options from here
  #
  # config.codigo5_signature do |widget|
  #   widget.theme = 'dark'
  #   widget.logo_width = 200
  #   widget.logo_height = 49
  # end
RUBY
      end
    end
  end
end
