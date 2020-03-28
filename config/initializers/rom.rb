# frozen_string_literal: true

ROM::Rails::Railtie.configure do |config|
  config.gateways[:default] = [
    :ldap,
    'ldap://cn=Directory Manager:topsecret@localhost:3389/dc=rom,dc=ldap',
    extensions: %i[
      compatibility
    ]
  ]
end
