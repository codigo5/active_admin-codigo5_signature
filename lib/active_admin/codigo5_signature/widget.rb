module ActiveAdmin
  module Codigo5Signature
    class Widget
      HTML_OPTIONS = [:theme, :logo_width, :logo_height].freeze

      attr_accessor :enabled, *HTML_OPTIONS

      def config(enabled = true)
        @enabled = enabled
        yield(self) if block_given?
      end

      def enabled
        @enabled = true if @enabled.nil?
        @enabled
      end
      alias_method :enabled?, :enabled

      def theme
        @theme ||= 'light'
      end

      def options
        Hash[HTML_OPTIONS.map { |o| [o, self.public_send(o)] if self.public_send(o) }.compact]
      end
    end
  end
end
