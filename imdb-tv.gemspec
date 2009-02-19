# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{imdb-tv}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Harris"]
  s.date = %q{2009-02-19}
  s.description = %q{Library to get tv episode info}
  s.email = %q{GFunk913@gmail.com}
  s.files = ["VERSION.yml", "lib/imdb_tv", "lib/imdb_tv/episode.rb", "lib/imdb_tv/ext.rb", "lib/imdb_tv/page.rb", "lib/imdb_tv/show.rb", "lib/imdb_tv.rb", "spec/imdb_tv_spec.rb", "spec/pages", "spec/pages/madmen.html", "spec/spec_helper.rb", "spec/spec_page.rb", "spec/spec_show.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/GFunk911/imdb-tv}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Library to get tv episode info}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
