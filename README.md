# Ruby » <br> ToId gem

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
