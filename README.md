# SixArm.com » Ruby » <br> ToId gem

* Doc: <http://sixarm.com/sixarm_ruby_to_id/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_to_id>
* Repo: <http://github.com/sixarm/sixarm_ruby_to_id>
* Email: Joel Parker Henderson, <joel@sixarm.com>

## Introduction

Convert strings to various kinds of id types and uuid types.

For docs go to <http://sixarm.com/sixarm_ruby_to_id/doc>

We use this gem to help santize web application inputs, for example HTTP query strings and form input controls.

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_to_id

Bundler:

    gem "sixarm_ruby_to_id", "~>1.0.0"	

Require:

    require "sixarm_ruby_to_id"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_to_id --trust-policy HighSecurity


## Examples

Cast a string to an integer id:

    "100".to_i_id #=> 100

Cast a string to a string UUID and ensure it has the right hex characters and dash locations:

    "bbd98640-4c2a-4343-ab6b-0ebd2fec6362".to_uuid

Cast a comma-separated list to string ids:

    "a,b,c".to_s_ids #=> ["a", "b", "c"]

Cast a hash of year, month, day to a date id YYYY-MM-DD:

    {year: "2000", month: "12", day: "31"}.to_date_id #=> "2000-12-31"



## Changes
 
* 2012-09-21 1.0.8 Change stint format to use range dots like "x..y"
* 2012-08-21 1.0.7 Add Hash#to_date_id
* 2012-08-11 1.0.0 Publish


## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2013 Joel Parker Henderson
