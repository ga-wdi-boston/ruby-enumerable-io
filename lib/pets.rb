# frozen_string_literal: true
require 'csv'
require_relative 'pet.rb'

# Pet class
class Pets
  attr_reader :pets
  def initialize(filename)
    @pets = []
    CSV.foreach(filename,
                headers: true,
                header_converters: :symbol) do |pet|
                  @pets << Pet.new(pet.to_hash)
                end
  end
end
