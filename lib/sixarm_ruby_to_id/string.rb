# -*- coding: utf-8 -*-

# Cast a string to an id.
#
class String

  # Cast me to a date id.
  #
  #     " 2000-12-31 ".to_date_id
  #     #=> "2000-12-31"
  #
  def to_date_id
    s = self.strip
    s =~ /\A\d\d\d\d-\d\d-\d\d\z/ ? s : nil
  end

  # Cast me to a list of date ids.
  # The string is comma-separated.
  #
  #     "2000-12-31,2001-12-31,2002-12-31".to_date_id
  #     #=> ["2000-12-31", "2001-12-31", "2002-12-31"]
  #
  def to_date_ids
    split(/,/).map{|x| x.to_date_id}
  end

  # Cast me to a stint id.
  #
  # The string is two ISO dates in YYYY-MM-DD.
  #
  # The separator is either:
  #
  #   * two dots ".." to include the stop date
  #
  #   * three dots "..." to exclude the stop date.
  #
  # Examples:
  #
  #     " 2000-12-30..2000-12-31".to_stint_id
  #     #=> "2000-12-30-2000-12-31"
  #
  #     " 2000-12-30...2000-12-31".to_stint_id
  #     #=> "2000-12-30-2000-12-31"
  #
  def to_stint_id
    s = self.strip
    s =~ /\A\d\d\d\d-\d\d-\d\d\.\.\.?\d\d\d\d-\d\d-\d\d\z/ ? s : nil
  end

  # Cast me to a list of stint ids.
  # The string is comma-separated.
  #
  #     "2000-12-30-2000-12-31,2001-12-30-2001-12-31,2002-12-30-2002-12-31".to_date_id
  #     #=> ["2000-12-30-2000-12-31"], ["2001-12-30-2001-12-31"], ["2002-12-30-2002-12-31"]]
  #
  def to_stint_ids
    split(/,/).map{|x| x.to_stint_id}
  end

  # Cast me to an integer id.
  #
  #     " 1 ".to_i_id
  #     #=> 1
  #
  def to_i_id
    strip.to_i
  end

  # Cast me (a comma-separated list) to a list of integer ids.
  # The string is comma-separated.
  #
  #     "1,2,3".to_s_ids
  #      #=> [1, 2, 3]
  #
  def to_i_ids
    split(/,/).map{|x| x.to_i_id}
  end

  # Cast me to a string id.
  #
  #     " a "
  #     #=> "a"
  #
  def to_s_id
    strip
  end

  # Cast me to a list of string ids.
  # The string is comma-separated.
  #
  #     "a,b,c".to_s_ids
  #     #=> ["a", "b", "c"]
  #
  def to_s_ids
    split(/,/).to_s_ids
  end

  # Cast me to a string uuid.
  #
  #     " 00000000-0000-0000-0000-000000000000 ".to_s_uuids
  #     #=> "00000000-0000-0000-0000-000000000000"
  #
  def to_s_uuid
    strip.match(/^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/) ? $& : nil
  end

  # Cast me to a list of string ids.
  # The string is comma-separated.
  #
  #     "00000000-0000-0000-0000-000000000000,11111111-1111-1111-1111-111111111111".to_s_uuids
  #     #=> [
  #       "00000000-0000-0000-0000-000000000000"
  #       "11111111-1111-1111-1111-111111111111"
  #     ]
  #
  def to_s_uuids
    split(/,/).to_s_uuids
  end


end
