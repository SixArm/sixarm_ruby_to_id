# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_to_id"

class Mock
  def object_id
    "123"
  end
end

describe Object do

  describe "#to_i_id" do
    it "returns #object_id.to_i" do
      x = Mock.new
      x.to_i_id.must_equal 123
    end
  end

  describe "#to_i_ids" do
    it "returns #object_id.to_i list" do
      x = Mock.new
      x.to_i_ids.must_equal [123]
    end
  end

end
