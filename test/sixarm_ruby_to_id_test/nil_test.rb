# -*- coding: utf-8 -*-
require "minitest/autorun"
require "sixarm_ruby_to_id"

describe NilClass do

  describe "#to_date_id" do
    it "always returns nil" do
      nil.to_date_id.must_be_same_as nil
    end
  end

  describe "#to_date_ids" do
    it "always returns nil" do
      nil.to_date_ids.must_be_same_as nil
    end
  end

  describe "#to_stint_id" do
    it "always returns nil" do
      nil.to_stint_id.must_be_same_as nil
    end
  end

  describe "#to_stint_ids" do
    it "always returns nil" do
      nil.to_stint_ids.must_be_same_as nil
    end
  end

  describe "#to_i_id" do
    it "always returns nil" do
      nil.to_i_id.must_be_same_as nil
    end
  end

  describe "#to_i_ids" do
    it "always returns nil" do
      nil.to_i_ids.must_be_same_as nil
    end
  end

  describe "#to_s_id" do
    it "always returns nil" do
      nil.to_s_id.must_be_same_as nil
    end
  end

  describe "#to_s_ids" do
    it "always returns nil" do
      nil.to_s_ids.must_be_same_as nil
    end
  end

end
