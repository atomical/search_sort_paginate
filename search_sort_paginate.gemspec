$:.push File.expand_path("../lib", __FILE__)
require "search_sort_paginate/version"

Gem::Specification.new do |s|
  s.name        = 'search_sort_paginate'
  s.version     = SearchSortPaginate::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Adam Hallett']
  s.email       = ['adam.t.hallett@gmail.com']
  s.homepage    = 'http://github.com/atomical/search_sort_paginate'
  s.summary     = %q{An easy way to do vanilla search, sort, and paginate on a collection.}
  s.description = %q{SearchSortPaginate has convenience methods that hook into your controllers.}
  s.files       = Dir['lib/**/*'] + Dir['vendor/**/*'] + ['README.md']
  s.require_paths = ['lib']
  s.add_dependency 'activesupport'
  s.add_dependency 'rails'
  s.add_dependency 'railties'
  s.add_dependency 'kaminari'
end