require_relative './lib/CommbankComAu/VERSION'

class Gem::Specification
  def development_dependencies=(gems)
    gems.each{|gem| add_development_dependency(*gem)}
  end
end

Gem::Specification.new do |spec|
  spec.name = 'commbank_com_au'
  spec.version = CommbankComAu::VERSION

  spec.summary = "Download transactions from CommBank NetBank."
  spec.description = "Log into CommBank NetBank and export an account's transactions. Nothing is implemented yet."

  spec.author = 'thoran'
  spec.email = 'code@thoran.com'
  spec.homepage = 'https://github.com/thoran/commbank_com_au'
  spec.license = 'MIT'

  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 3.3'

  spec.files = [
    'commbank_com_au.gemspec',
    Dir['lib/**/*.rb'],
    Dir['test/**/*.rb'],
    'CHANGELOG',
    'Gemfile',
    'LICENSE',
    'Rakefile',
    'README.md',
  ].flatten

  spec.development_dependencies = %w{
    minitest
    rake
  }
end
