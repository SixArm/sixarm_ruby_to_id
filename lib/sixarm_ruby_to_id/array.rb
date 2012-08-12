class Array


  # Cast the items to date ids.
  # 
  #    "2000-12-31,2001-12-31,2002-12-31".to_date_id
  #    #=> ["2000-12-31", "2001-12-31", "2002-12-13"]
  #
  def to_date_ids
    map{|x| x.to_date_id}
  end


  # Cast the items to stint ids.
  # 
  #    ["2000-12-30-2000-12-31", "2001-12-30-2001-12-31", "2002-12-30-2002-12-31".to_stint_ids 
  #    #=> ["2000-12-30-2000-12-31", "2001-12-30-2001-12-31", "2002-12-30-2002-12-31"]
  #
  def to_stint_ids
    map{|x| x.to_stint_id}
  end


  # Cast the items to integer ids.
  #
  #    [" 1 ", " 2 ", " 3 "].to_i_ids
  #    #=> [1, 2, 3]
  #
  def to_i_ids
    map{|x| x.to_i_id}
  end


  # Cast the items to string ids.
  #
  #    [" a ", " b ", " c "].to_i_ids 
  #    #=> ["a", "b", "c"]
  #
  def to_s_ids
    map{|x| x.to_s_id}
  end


  # Cast the items to string uuids.
  #
  #    [
  #     " 00000000-0000-0000-0000-000000000000 "
  #     " 11111111-1111-1111-1111-111111111111 ",
  #     " 22222222-2222-2222-2222-222222222222 "
  #    ].to_s_uuids 
  #    #=> [
  #     "00000000-0000-0000-0000-000000000000"
  #     "11111111-1111-1111-1111-111111111111",
  #     "22222222-2222-2222-2222-222222222222"
  #    ]
  #
  def to_s_uuids
    map{|x| x.to_s_uuid}
  end


end
