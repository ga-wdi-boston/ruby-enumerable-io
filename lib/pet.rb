# frozen_string_literal: true
require 'date'
require_relative './age.rb'
include Age
#
class Pet
  attr_reader :dob, :kind, :name

  def initialize(pet_data)
    @dob = pet_data[:dob]
    @kind = pet_data[:kind]
    @name = pet_data[:name]
  end

end
