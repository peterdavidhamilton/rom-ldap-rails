# frozen_string_literal: true

class CreateAnimals < ROM::Commands::Create[:ldap]
  relation :animals
  register_as :create
  result :many
end
