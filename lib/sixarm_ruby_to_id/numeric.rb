# -*- coding: utf-8 -*-

# Cast a number to an id.
#
class Numeric

  # Cast me to an int.
  #
  #     3.14.to_i_id
  #     #=> 3
  #
  def to_i_id
    to_i
  end

  # Cast me to a list of int.
  #
  #     3.14.to_i_ids
  #     #=> [3]
  #
  def to_i_ids
    [to_i]
  end


end
