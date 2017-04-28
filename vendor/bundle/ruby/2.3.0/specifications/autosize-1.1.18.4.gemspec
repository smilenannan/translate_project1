# -*- encoding: utf-8 -*-
# stub: autosize 1.1.18.4 ruby lib

Gem::Specification.new do |s|
  s.name = "autosize"
  s.version = "1.1.18.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jack Moore", "Adrian Rangel"]
  s.date = "2014-02-10"
  s.description = "Small jQuery plugin to allow dynamic resizing of textarea height, so that it grows as based on visitor input. To use, just call the .autosize() method on any textarea element."
  s.email = ["adrian.rangel@gmail.com"]
  s.homepage = "http://www.jacklmoore.com/autosize/"
  s.licenses = ["MIT"]
  s.rubyforge_project = "autosize"
  s.rubygems_version = "2.5.1"
  s.summary = "This gem allows you to use Autosize jQuery plugin"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
