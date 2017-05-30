# frozen_string_literal: true
#
require 'date'
require_relative './age.rb'
include Age
#
class Person
  def initialize(h)
    h.keys.each do |key|
      instance_variable_set(('@' + key.to_s).to_sym, h[key])
      self.class.send(:attr_reader, key)
    end
  end
end
