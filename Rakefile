require 'bundler/setup'

require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rdoc/task'

RDoc::Task.new do |rdoc|
  rdoc.title = 'Open Mailer Documentation'
  rdoc.main = 'README.md'
  rdoc.rdoc_dir = 'doc'
  rdoc.rdoc_files.include '*.md', 'MIT-LICENSE', 'lib/**/*.rb'
end

Rake::TestTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/*_test.rb'
end

task default: :test
