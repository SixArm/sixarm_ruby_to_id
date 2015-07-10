# -*- coding: utf-8 -*-

['array','date','hash','nil','numeric','object','string'].map{|x|
  require File.dirname(__FILE__) + "/sixarm_ruby_to_id/#{x}.rb"
}
