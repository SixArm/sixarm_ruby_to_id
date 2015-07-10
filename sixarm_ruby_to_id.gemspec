# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name           = "sixarm_ruby_to_id"
  s.summary        = "SixArm.com » Ruby » ToId"
  s.description    = "ToId converts types to ids and uuids"
  s.version        = "1.0.9"

  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["BSD", "GPL", "MIT", "PAL", "Various"]

  s.signing_key    =  "/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-private.pem"
  s.cert_chain     = ["/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-public.pem"]

  s.platform       = Gem::Platform::RUBY
  s.require_path   = "lib"
  s.has_rdoc       = true

  s.files = [
    ".gemtest",
    "CHANGES.md",
    "CONTRIBUTING.md",
    "LICENSE.md",
    "Rakefile",
    "README.md",
    "VERSION",
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

  s.add_development_dependency('minitest', '>= 5.7.0', '< 6')
  s.add_development_dependency('rake', '> 10.4.2', '< 11')
  s.add_development_dependency('simplecov', '>= 0.10.0', '< 2')
  s.add_development_dependency('coveralls', '>= 0.8.2', '< 2')

end
