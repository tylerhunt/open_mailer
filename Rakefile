require 'bundler/setup'

require 'bundler/gem_tasks'
require 'rdoc/task'
require 'rspec/core/rake_task'

RDoc::Task.new do |rdoc|
  rdoc.title = 'Open Mailer Documentation'
  rdoc.main = 'README.md'
  rdoc.rdoc_dir = 'doc'
  rdoc.rdoc_files.include '*.md', 'MIT-LICENSE', 'lib/**/*.rb'
end

RSpec::Core::RakeTask.new

task default: :spec
