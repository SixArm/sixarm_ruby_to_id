# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name           = "sixarm_ruby_to_id"
  s.summary        = "SixArm.com → Ruby → ToId"
  s.description    = "ToId converts types to ids and uuids"
  s.version        = "2.0.0"

  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["Apache-2.0", "Artistic-2.0", "BSD-3-Clause", "GPL-2.0", "GPL-3.0", "MIT", "MPL-2.0"]

  s.signing_key    = "/opt/key/sixarm/sixarm-ruby-gem-signing-20230504-private.pem"
  s.cert_chain     = ["/opt/key/sixarm/sixarm-ruby-gem-signing-20230504-public.pem"]

  s.platform       = Gem::Platform::RUBY
  s.require_path   = "lib"


  s.files = [
    "Rakefile",
    "lib/sixarm_ruby_to_id.rb",
    "lib/sixarm_ruby_to_id/array.rb",
    "lib/sixarm_ruby_to_id/date.rb",
    "lib/sixarm_ruby_to_id/hash.rb",
    "lib/sixarm_ruby_to_id/nil.rb",
    "lib/sixarm_ruby_to_id/numeric.rb",
    "lib/sixarm_ruby_to_id/object.rb",
    "lib/sixarm_ruby_to_id/string.rb",
  ]

  s.test_files = [
    "test/sixarm_ruby_to_id_test.rb",
    "test/sixarm_ruby_to_id_test/array_test.rb",
    "test/sixarm_ruby_to_id_test/date_test.rb",
    "test/sixarm_ruby_to_id_test/hash_test.rb",
    "test/sixarm_ruby_to_id_test/nil_test.rb",
    "test/sixarm_ruby_to_id_test/numeric_test.rb",
    "test/sixarm_ruby_to_id_test/object_test.rb",
    "test/sixarm_ruby_to_id_test/string_test.rb",
  ]

  s.add_development_dependency("minitest", ">= 5.12", "< 6")
  s.add_development_dependency("sixarm_ruby_minitest_extensions", ">= 1.0.8", "< 2")
  s.add_development_dependency("rake", ">= 12.3.3", "< 13")
  s.add_development_dependency("simplecov", ">= 0.18.0", "< 2")
  s.add_development_dependency("flog", ">= 4.6.2", "< 5")
  s.add_development_dependency("flay", ">= 2.12.0", "< 3")
  s.add_development_dependency("reek", ">= 4.8.1", "< 5")
  s.add_development_dependency('rubycritic', '>= 3.4.0', '< 4')
  s.add_development_dependency('rubocop', '>= 0.57.2', '< 1')

  s.required_ruby_version = ">= 2.5"

end
