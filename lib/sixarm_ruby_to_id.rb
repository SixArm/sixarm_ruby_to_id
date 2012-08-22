# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

['array','date','hash','nil','numeric','object','string'].map{|x|
  require File.dirname(__FILE__) + "/sixarm_ruby_to_id/#{x}.rb"
}
