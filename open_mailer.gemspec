require_relative 'lib/open_mailer/version'

Gem::Specification.new do |spec|
  spec.name = 'open_mailer'
  spec.version = OpenMailer::VERSION
  spec.authors = ['Tyler Hunt']
  spec.email = %w(tyler@tylerhunt.com)
  spec.homepage = 'https://github.com/tylerhunt/open_mailer'
  spec.summary = 'An Action Mailer delivery method that opens emails locally.'
  spec.license = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host' to allow pushing to a single host or delete this
  # section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = 'TODO: Set to "http://mygemserver.com"'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  #spec.metadata['changelog_uri'] = ''

  spec.files = Dir[
    '{app,config,db,lib}/**/*',
    'MIT-LICENSE',
    'Rakefile',
    'README.md',
  ]

  spec.add_dependency 'launchy', '~> 2.5'
  spec.add_dependency 'mail', '~> 2.5'
  spec.add_dependency 'rails', '> 5'
end
