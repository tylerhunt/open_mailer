require_relative 'lib/open_mailer/version'

Gem::Specification.new do |spec|
  repo_uri = 'https://github.com/tylerhunt/open_mailer'

  spec.name = 'open_mailer'
  spec.version = OpenMailer::VERSION
  spec.authors = ['Tyler Hunt']
  spec.email = %w(tyler@tylerhunt.com)
  spec.homepage = repo_uri
  spec.summary = 'An Action Mailer delivery method that opens emails locally.'
  spec.license = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host' to allow pushing to a single host or delete this
  # section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = 'TODO: Set to "http://mygemserver.com"'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = repo_uri
  spec.metadata['changelog_uri'] = [repo_uri, '/blob/master/CHANGELOG.md'].join

  spec.files = Dir[
    'CHANGELOG.md',
    'MIT-LICENSE',
    'README.md',
    'Rakefile',
    'lib/**/*',
  ]

  spec.add_dependency 'launchy', '~> 2.5'
  spec.add_dependency 'mail', '~> 2.5'
  spec.add_dependency 'rails', '> 5'
end
