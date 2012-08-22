class Hash


  # Cast me to a date id by parsing fields for year, month, day.
  #
  #    hash = {year: "2000", month: "12", day: "31"}
  #    hash.to_date_id
  #    #=> "2000-12-31"
  #
  def to_date_id
    year  = self["year"]  || self[:year]
    month = self["month"] || self[:month]
    day   = self["day"]   || self[:day]
    year && month && day ? sprintf("%4.4d-%2.2d-%2.2d", year.to_i, month.to_i, day.to_i) : nil
  end


end
