# -*- coding: utf-8 -*-
require "sixarm_ruby_to_id_test"

describe Date do

  describe "#to_date_id" do
    it "casts to a date id YYYY-MM-DD" do
      Date.parse("2000-12-31").to_date_id.must_equal "2000-12-31"
    end
  end

  describe "#to_date_ids" do
    it "casts to a date id YYYY-MM-DD list" do
      Date.parse("2000-12-31").to_date_ids.must_equal ["2000-12-31"]
    end
  end

end
