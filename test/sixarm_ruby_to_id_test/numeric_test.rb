# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_to_id"

describe Numeric do

  describe "#to_i_id" do
    it "casts me to an int id" do
      1.to_i_id.must_equal 1
    end
  end

  describe "#to_i_ids" do
    it "casts me to a list of int id" do
      1.to_i_ids.must_equal [1]
    end
  end

end
