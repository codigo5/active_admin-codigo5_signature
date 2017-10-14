module ActiveAdmin
  module Codigo5Signature
    module Application
      def codigo5_signature(enabled = true, &block)
        codigo5_signature_widget.config(enabled, &block)
      end

      def codigo5_signature_widget
        @codigo5_signature_widget ||= ActiveAdmin::Codigo5Signature::Widget.new
      end
    end
  end
end
