# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start

['array','date','hash','nil','numeric','object','string'].map{|x|
  require "sixarm_ruby_to_id_test/#{x}_test.rb"
}


