require 'active_support/core_ext'
require 'active_admin'

module ActiveAdmin
  module Codigo5Signature
    autoload :Version, 'active_admin/codigo5_signature/version'
    autoload :Widget, 'active_admin/codigo5_signature/widget'
  end
end

require 'active_admin/codigo5_signature/engine'
require 'active_admin/codigo5_signature/application'

ActiveAdmin::Application.include(ActiveAdmin::Codigo5Signature::Application)

# It must be a monkey patch
require_relative 'views/footer'
