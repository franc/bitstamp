# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "bitstamp"
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeffrey Wilcke"]
  s.date = "2013-09-26"
  s.description = "Ruby API for use with bitstamp."
  s.email = "stygeo@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".rspec",
    ".ruby-gemset",
    ".ruby-version",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "bitstamp.gemspec",
    "lib/bitstamp.rb",
    "lib/bitstamp/collection.rb",
    "lib/bitstamp/helper.rb",
    "lib/bitstamp/model.rb",
    "lib/bitstamp/net.rb",
    "lib/bitstamp/orders.rb",
    "lib/bitstamp/ticker.rb",
    "lib/bitstamp/transactions.rb",
    "spec/bitstamp_spec.rb",
    "spec/collection_spec.rb",
    "spec/fixtures/vcr_cassettes/bitstamp/balance.yml",
    "spec/fixtures/vcr_cassettes/bitstamp/order_book.yml",
    "spec/fixtures/vcr_cassettes/bitstamp/orders/all.yml",
    "spec/fixtures/vcr_cassettes/bitstamp/orders/buy.yml",
    "spec/fixtures/vcr_cassettes/bitstamp/orders/sell/failure.yml",
    "spec/fixtures/vcr_cassettes/bitstamp/ticker.yml",
    "spec/fixtures/vcr_cassettes/bitstamp/user_transactions/all.yml",
    "spec/orders_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/bitstamp_setup.rb",
    "spec/support/vcr.rb",
    "spec/transactions_spec.rb"
  ]
  s.homepage = "http://github.com/kojnapp/bitstamp"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Bitstamp Ruby API"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>, [">= 3.1"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.1"])
      s.add_runtime_dependency(%q<curb>, ["> 0.8.1"])
      s.add_runtime_dependency(%q<ruby-hmac>, ["= 0.4.0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3.5"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
    else
      s.add_dependency(%q<activemodel>, [">= 3.1"])
      s.add_dependency(%q<activesupport>, [">= 3.1"])
      s.add_dependency(%q<curb>, ["> 0.8.1"])
      s.add_dependency(%q<ruby-hmac>, ["= 0.4.0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.3.5"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    end
  else
    s.add_dependency(%q<activemodel>, [">= 3.1"])
    s.add_dependency(%q<activesupport>, [">= 3.1"])
    s.add_dependency(%q<curb>, ["> 0.8.1"])
    s.add_dependency(%q<ruby-hmac>, ["= 0.4.0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.3.5"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
  end
end

