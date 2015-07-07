# -*- coding: utf-8 -*-
require "minitest/autorun"
require "sixarm_ruby_to_id"

describe Date do

  describe "#to_date_id" do
    it "casts to a date id YYYY-MM-DD" do
      Date.parse("2000-12-31").to_date_id.must_equal "2000-12-31"
    end
  end

end

