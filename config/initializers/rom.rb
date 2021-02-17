# frozen_string_literal: true

ROM::Rails::Railtie.configure do |config|
  config.gateways[:default] = [
    :ldap, extensions: %i[compatibility]
  ]
end
