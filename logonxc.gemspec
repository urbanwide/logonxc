# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{logonxc}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Deb Bassett"]
  s.date = %q{2011-11-18}
  s.description = %q{Parse basic logo and output NXC for Lego Mindstorms}
  s.email = %q{deb@urbanwide.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/logonxc.rb",
    "logonxc.gemspec",
    "spec/logonxc_spec.rb",
    "spec/spec_helper.rb",
    "templates/logonxc.erb"
  ]
  s.homepage = %q{http://github.com/urbanwide/logonxc}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.3}
  s.summary = %q{Logo to Lego NXC}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<erubis>, [">= 0"])
      s.add_runtime_dependency(%q<rake>, ["= 0.8.7"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<erubis>, [">= 0"])
      s.add_dependency(%q<rake>, ["= 0.8.7"])
      s.add_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<erubis>, [">= 0"])
    s.add_dependency(%q<rake>, ["= 0.8.7"])
    s.add_dependency(%q<rspec>, ["~> 2.3.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

