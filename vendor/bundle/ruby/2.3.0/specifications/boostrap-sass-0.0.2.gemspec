# -*- encoding: utf-8 -*-
# stub: boostrap-sass 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "boostrap-sass"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Benjamin Eckel"]
  s.date = "2014-03-19"
  s.description = "boo!"
  s.email = ["bhelx@simst.im"]
  s.homepage = ""
  s.licenses = ["MIT"]
  s.post_install_message = "\n      .'``'.      ...\n     :o  o `....'`  ;\n     `. O         :'\n       `':          `.\n         `:.          `.\n          : `.         `.\n         `..'`...       `.\n                 `...     `.\n     boo!            ``...  `.\n                          `````.\n\n"
  s.rubygems_version = "2.5.1"
  s.summary = "boo!"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<bootstrap-sass>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bootstrap-sass>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bootstrap-sass>, [">= 0"])
  end
end
