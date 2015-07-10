# -*- coding: utf-8 -*-

# Cast an object to an id.
#
class Object

  # Cast me to an int id.
  #
  #     Object.new.to_i_ids
  #     #=> 70186724200120
  #
  # Call #object_id.to_i on the object; this is a decent default.
  # Subclasses will override this, e.g. String, Array, Numeric, etc.
  #
  def to_i_id
    object_id.to_i
  end

  # Cast me to a list of int ids.
  #
  #     Object.new.to_i_ids
  #     #=> [70186724200120]
  #
  # Call #object_id.to_i on the object; this is a decent default.
  # Subclasses will override this, e.g. String, Array, Numeric, etc.
  #
  def to_i_ids
    [self.to_i_id]
  end

end
