Gem::Specification.new do |spec|
  spec.name          = "string-undump"
  spec.version       = '0.0.1dev'
  spec.authors       = ["Tadashi Saito"]
  spec.email         = ["tad.a.digger@gmail.com"]

  spec.summary       = 'String#undump'
  spec.description   = 'Unofficial implementation of String#undump, does inverse of String#dump'
  spec.homepage      = 'https://github.com/tadd/string-undump'
  spec.license       = "Ruby's"

  files = `git ls-files -z`.split("\x0")
  spec.files         = files.reject {|f| f.match(%r{^(test|spec|features)/})}
  spec.test_files    = files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "test-unit"
end
