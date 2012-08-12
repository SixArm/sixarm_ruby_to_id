# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'sixarm_ruby_to_id'

describe Array do

  describe "#to_date_ids" do
    it "casts the items to date ids" do
      [" 2000-12-31 ", " 2001-12-31 ", " 2002-12-31 "].to_date_ids.must_equal ["2000-12-31", "2001-12-31", "2002-12-31"]
      [" X000-12-31 ", " Y001-12-31 ", " Z002-12-31 "].to_date_ids.must_equal [nil, nil, nil]
    end
  end

  describe "#to_stint_ids" do
    it "casts the items to stint ids" do
      [" 2000-12-30-2000-12-31 ", " 2001-12-30-2001-12-31 ", " 2002-12-30-2002-12-31 "].to_stint_ids.must_equal ["2000-12-30-2000-12-31", "2001-12-30-2001-12-31", "2002-12-30-2002-12-31"]
      [" X000-12-30-2000-12-31 ", " Y001-12-30-2001-12-31 ", " Z002-12-30-2002-12-31 "].to_stint_ids.must_equal [nil, nil, nil]
    end
  end

  describe "#to_i_ids" do
    it "casts the items to integer ids" do
      [" 1 ", " 2 ", " 3 "].to_i_ids.must_equal [1, 2, 3]
      [" X ", " Y ", " Z "].to_i_ids.must_equal [0, 0, 0]
    end
  end

  describe "#to_s_ids" do
    it "casts the items to string ids" do
      [" 1 ", " 2 ", " 3 "].to_s_ids.must_equal ["1", "2", "3"]
      [" X ", " Y ", " Z "].to_s_ids.must_equal ["X", "Y", "Z"]
    end
  end

  describe "#to_s_uuids" do
    it "casts the items to string uuids" do
      [" 0000aaaa-00aa-00aa-00aa-000000aaaaaa ", " 1111bbbb-11bb-11bb-11bb-111111bbbbbb ", " 2222cccc-22cc-22cc-22cc-222222cccccc "].to_s_uuids.must_equal ["0000aaaa-00aa-00aa-00aa-000000aaaaaa", "1111bbbb-11bb-11bb-11bb-111111bbbbbb", "2222cccc-22cc-22cc-22cc-222222cccccc"]
      [" X ", " Y ", " Z "].to_s_uuids.must_equal [nil, nil, nil]
    end
  end
end
