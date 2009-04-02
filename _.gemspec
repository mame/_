# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{_}
  s.version = "1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yusuke Endoh"]
  s.date = %q{2009-04-01}
  s.description = %q{_ allows you to write Ruby script by using only _.}
  s.email = ["mame@tsg.ne.jp"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "lib/_.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/mame/_/tree/master}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{_}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{_ allows you to write Ruby script by using only _.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 1.12.1"])
    else
      s.add_dependency(%q<hoe>, [">= 1.12.1"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.12.1"])
  end
end
