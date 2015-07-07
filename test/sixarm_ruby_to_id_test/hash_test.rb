# -*- coding: utf-8 -*-
require "minitest/autorun"
require "sixarm_ruby_to_id"

describe Hash do

  describe "#to_date_id casts to a date id" do

    describe "with fields for year, month, day #=> YYYY-MM-DD" do

      it "works with string keys" do
        {"year" => "2000", "month" => "12", "day" => "31"}.to_date_id.must_equal "2000-12-31"
      end

      it "works with symbol keys" do
        {year: "2000", month: "12", day: "31"}.to_date_id.must_equal "2000-12-31"
      end

    end

    describe "with fields for year, month, day any of which are blank strings #=> nil" do

      it "year is blank #=> nil" do
        {year: "", month: "12", day: "31"}.to_date_id.must_equal nil
      end
      
      it "month is blank #=> nil" do
        {year: "2000", month: "", day: "31"}.to_date_id.must_equal nil
      end
      
      it "day is blank #=> nil" do
        {year: "2000", month: "12", day: ""}.to_date_id.must_equal nil
      end

    end

    describe "without fields for year, or month, or day #=> nil" do

      it "missing year #=> nil" do
        {month: "12", day: "31"}.to_date_id.must_equal nil
      end
      
      it "missing month #=> nil" do
        {year: "2000", day: "31"}.to_date_id.must_equal nil
      end
      
      it "missing day #=> nil" do
        {year: "2000", month: "12"}.to_date_id.must_equal nil
      end

    end

  end

end


