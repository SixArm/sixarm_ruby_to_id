class Date


  # Cast me to a date id.
  # 
  #    Date.today.to_date_id 
  #    #=> "2000-12-31"
  #
  def to_date_id
    self.to_time.strftime("%Y-%m-%d")
  end


end
