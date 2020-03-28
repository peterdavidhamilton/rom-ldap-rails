# frozen_string_literal: true

class Animal
  extend Dry::Initializer
  include Dry::Equalizer(:cn, :species, :object_class)

  option :cn
  option :species
  option :object_class
end
