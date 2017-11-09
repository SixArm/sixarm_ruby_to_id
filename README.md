# SixArm.com → Ruby → <br> ToId parses an object to id

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_to_id.svg)](http://badge.fury.io/rb/sixarm_ruby_to_id)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_to_id.png)](https://travis-ci.org/SixArm/sixarm_ruby_to_id)
[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_to_id.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_to_id)
[![Coverage Status](https://coveralls.io/repos/SixArm/sixarm_ruby_to_id/badge.svg?branch=master&service=github)](https://coveralls.io/github/SixArm/sixarm_ruby_to_id?branch=master)

* Git: <https://github.com/sixarm/sixarm_ruby_to_id>
* Doc: <http://sixarm.com/sixarm_ruby_to_id/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_to_id>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [Changes](CHANGES.md), [License](LICENSE.md), [Contributing](CONTRIBUTING.md).

<!--header-shut-->

## Introduction

Convert strings to various kinds of id types and uuid types.

For docs go to <http://sixarm.com/sixarm_ruby_to_id/doc>

We use this gem to help santize web application inputs, for example HTTP query strings and form input controls.

Want to help? We're happy to get pull requests.


<!--install-opent-->

## Install

### Gem

Run this command in your shell or terminal:

    gem install sixarm_ruby_to_id

Or add this to your Gemfile:

    gem 'sixarm_ruby_to_id'

### Require

To require the gem in your code:

    require 'sixarm_ruby_to_id'

<!--install-shut-->


## Examples

Cast a string to an integer id:

    "100".to_i_id #=> 100

Cast a string to a string UUID and ensure it has the right hex characters and dash locations:

    "bbd98640-4c2a-4343-ab6b-0ebd2fec6362".to_uuid

Cast a comma-separated list to string ids:

    "a,b,c".to_s_ids #=> ["a", "b", "c"]

Cast a hash of year, month, day to a date id YYYY-MM-DD:

    {year: "2000", month: "12", day: "31"}.to_date_id #=> "2000-12-31"
