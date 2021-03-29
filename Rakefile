require 'bundler/setup'

require 'bundler/gem_tasks'
require 'rdoc/task'

RDoc::Task.new do |rdoc|
  rdoc.title = 'Open Mailer Documentation'
  rdoc.main = 'README.md'
  rdoc.rdoc_dir = 'doc'
  rdoc.rdoc_files.include '*.md', 'MIT-LICENSE', 'lib/**/*.rb'
end
