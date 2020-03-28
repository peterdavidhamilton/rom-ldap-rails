# frozen_string_literal: true

class Animals < ROM::Relation[:ldap]
  schema '(species=*)', as: :animals, infer: true do
    attribute :cn, Types::Strings.meta(index: true)
    attribute :species, Types::String.meta(index: true)
  end

  use :auto_restrictions
end
