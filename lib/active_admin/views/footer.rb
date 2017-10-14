module ActiveAdmin
  module Views
    class Footer < Component
      def build(namespace)
        super id: 'footer'
        @namespace = namespace

        if codigo5_signature.enabled?
          div class: 'codigo5-signature-widget-wrapper'
          script src: '//cdn.codigo5.com.br/signature/signature-widget.min.js'
          script codigo5_signature_js.html_safe
        elsif footer?
          para footer_text
        else
          para powered_by_message
        end
      end

      protected

      def codigo5_signature
        ActiveAdmin.application.codigo5_signature_widget
      end

      def codigo5_signature_js
        <<-JS
cod5.signatureWidget.bootstrap(#{codigo5_signature.options.to_json});
        JS
      end
    end
  end
end
