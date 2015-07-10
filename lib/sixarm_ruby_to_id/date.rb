# -*- coding: utf-8 -*-

# Cast a date to an id.
#
class Date

  # Cast me to a date id.
  #
  #    Date.today.to_date_id
  #    #=> "2000-12-31"
  #
  def to_date_id
    self.to_time.strftime("%Y-%m-%d")
  end

  # Cast me to a list of date ids.
  #
  #    Date.today.to_date_id
  #    #=> "2000-12-31"
  #
  def to_date_id
    [self.to_date_id]
  end

end
