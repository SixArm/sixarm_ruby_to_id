# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'sixarm_ruby_to_id'

describe Object do

  describe "#to_i_id" do
    it "returns #id.to_i" do
      x = Object.new
      x.stubs(:id).returns("123")
      x.to_i_id #.must_equal 123
    end
  end

end

