class Object

  # Call #id.to_i on the object; this is a decent default.
  # Subclasses will override this, e.g. String, Array, Numeric, etc.
  #
  def to_i_id
    id.to_i
  end

end
