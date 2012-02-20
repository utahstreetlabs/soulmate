# -*- encoding: utf-8 -*-
require File.expand_path('../lib/soulmate/version', __FILE__)

Gem::Specification.new do |s|
  s.name = %q{soulmate}
  s.version = Soulmate::VERSION.dup

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eric Waller"]
  s.date = %q{2012-01-05}
  s.description = %q{Soulmate is a tool to help solve the common problem of developing a fast autocomplete feature. It uses Redis's sorted sets to build an index of partial words and corresponding top matches, and provides a simple sinatra app to query them. Soulmate finishes your sentences.}
  s.email = %q{eric@seatgeek.com}
  s.executables = ["soulmate", "soulmate-web"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.markdown",
    "Rakefile",
    "bin/soulmate",
    "bin/soulmate-web",
    "lib/soulmate.rb",
    "lib/soulmate/base.rb",
    "lib/soulmate/helpers.rb",
    "lib/soulmate/loader.rb",
    "lib/soulmate/matcher.rb",
    "lib/soulmate/server.rb",
    "lib/soulmate/version.rb",
    "soulmate.gemspec",
    "test/db/.gitkeep",
    "test/helper.rb",
    "test/samples/stop-words.txt",
    "test/samples/venues.json",
    "test/test.conf",
    "test/test_soulmate.rb"
  ]
  s.homepage = %q{http://github.com/seatgeek/soulmate}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Redis-backed service for fast autocompleting - extracted from SeatGeek}
  s.test_files = [
    "test/helper.rb",
    "test/test_soulmate.rb"
  ]

  s.add_runtime_dependency('redis')
  s.add_runtime_dependency('multi_json')
  s.add_runtime_dependency('rack-contrib')
  s.add_runtime_dependency('vegas')
  s.add_runtime_dependency('sinatra')
  s.add_development_dependency('shoulda')
  s.add_development_dependency('bundler')
end

