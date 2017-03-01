# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flyforms/version'

Gem::Specification.new do |spec|
  spec.name          = "flyforms"
  spec.version       = Flyforms::VERSION
  spec.authors       = ["Ooftypop"]
  spec.email         = ["kevin@storberg.net"]

  spec.summary       = %q{This gem dynamically saves a user's form progress on the server side.}
  spec.description   = %q{The form data is sent to the server as ajax and saved in the settings as an instance of the object the form represents..}
  spec.homepage      = "https://github.com/kevinstorberg/flyforms"
  spec.license       = "MIT"



  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rails-settings-cached"
end
