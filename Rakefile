require 'rubygems'
require 'bundler'

require 'spec/rake/spectask'
require 'cucumber/rake/task'

class GitGemHelper < Bundler::GemHelper
  def release_gem
    guard_clean
    guard_already_tagged
    built_gem_path = build_gem
    tag_version {
      #git_push
    }
  end
end

GitGemHelper.install_tasks

Cucumber::Rake::Task.new(:features)

Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

namespace :example_app do
  Spec::Rake::SpecTask.new(:spec) do |spec|
    desc "Specs for Example app"
    spec.libs << 'lib' << 'spec'
    spec.spec_files = FileList['examples/rails_root/spec/**/*_spec.rb']
  end
end

task :default => [:features, :spec, 'example_app:spec']

=begin
desc "Cleans the project of any tmp file that should not be included in the gemspec."
task :clean do
  FileUtils.rm_f('examples/rails_root/features/step_definitions/email_steps.rb')
  FileUtils.rm_rf('examples/rails_root/log')
  FileUtils.rm_rf('examples/rails_root/vendor')
  %w[*.sqlite3 *.log].each do |pattern|
    `find . -name "#{pattern}" -delete`
  end
end

desc "Cleans the dir and builds the gem"
task :prep => [:clean, :gemspec, :build]
=end

