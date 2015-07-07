# -*- coding: utf-8 -*-
require "minitest/autorun"
require "sixarm_ruby_to_id"

describe String do

  describe "#to_date_id" do
    it "casts me to a date id YYYY-MM-DD" do
      " 2000-12-31 ".to_date_id.must_equal "2000-12-31"
      " X000-12-31 ".to_date_id.must_equal nil
    end
  end

  describe "#to_date_ids" do
    it "casts me to a list of date ids" do
      " 2000-12-31 , 2001-12-31 , 2002-12-31 ".to_date_ids.must_equal ["2000-12-31", "2001-12-31", "2002-12-31"]
      " X000-12-31 , Y001-12-31 , Z002-12-31 ".to_date_ids.must_equal [nil, nil, nil]
    end
  end

  describe "#to_stint_id" do
    it "casts me to a stint id [YYYY-MM-DD, YYYY-MM-DD]" do
      " 2000-12-30..2000-12-31 ".to_stint_id.must_equal "2000-12-30..2000-12-31"
      " 2000-12-30...2000-12-31 ".to_stint_id.must_equal "2000-12-30...2000-12-31"
      " 2000-12-30-2000-12-31 ".to_stint_id.must_equal nil
      " 2000-12-30 2000-12-31 ".to_stint_id.must_equal nil
    end
  end

  describe "#to_stint_ids" do
    it "casts me to a list of stint ids" do 
      " 2000-12-30..2000-12-31 , 2001-12-30..2001-12-31 , 2002-12-30..2002-12-31 ".to_stint_ids.must_equal ["2000-12-30..2000-12-31", "2001-12-30..2001-12-31", "2002-12-30..2002-12-31"]
      " A000-12-30..2000-12-31 , B001-12-30..2001-12-31 , C002-12-30..2002-12-31 ".to_stint_ids.must_equal [nil, nil, nil]
    end
  end

  describe "#to_i_id" do
    it "casts me to an integer id (by using strip and to_i)" do
      " 1 ".to_i_id.must_equal 1
      " X ".to_i_id.must_equal 0
    end
  end

  describe "#to_i_ids" do
    it "casts me (a comma-separated list of items) to a list of integer ids (by using strip and to_i)" do
      " 1 , 2 , 3".to_i_ids.must_equal [1, 2, 3]
      " X , Y , Z".to_i_ids.must_equal [0, 0, 0]
    end
  end

  describe "#to_s_id" do
    it "casts me to a string id (by using strip)" do
      " 1 ".to_s_id.must_equal "1"
      " X ".to_s_id.must_equal "X"
    end
  end

  describe "#to_s_ids" do
    it "casts me (a comma-separated list of items) to a list of string ids (by using strip and to_i)" do
      " 1 , 2 , 3".to_s_ids.must_equal ["1", "2", "3"]
      " X , Y , Z".to_s_ids.must_equal ["X", "Y", "Z"]
    end
  end

  describe "#to_s_uuid" do
    it "casts me to a string uuid (by using strip and match)" do
      " 0000aaaa-00aa-00aa-00aa-000000aaaaaa ".to_s_uuid.must_equal "0000aaaa-00aa-00aa-00aa-000000aaaaaa"
      " X ".to_s_uuid.must_equal nil
    end
  end

  describe "#to_s_uuids" do
    it "casts me (a comma-separated list of items) to a list of string uuids (by using split and to_s_uuid)" do
      " 0000aaaa-00aa-00aa-00aa-000000aaaaaa , 1111bbbb-11bb-11bb-11bb-111111bbbbbb , 2222cccc-22cc-22cc-22cc-222222cccccc".to_s_uuids.must_equal ["0000aaaa-00aa-00aa-00aa-000000aaaaaa", "1111bbbb-11bb-11bb-11bb-111111bbbbbb", "2222cccc-22cc-22cc-22cc-222222cccccc"]
      " X , Y , Z".to_s_uuids.must_equal [nil, nil, nil]
    end
  end

end


