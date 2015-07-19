# -*- coding: utf-8 -*-

['array','date','hash','nil','numeric','object','string'].map{|x|
  require_relative "sixarm_ruby_to_id/#{x}"
}
