require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "ffi-opencl"
    gem.summary = %Q{TODO}
    gem.email = "martinhes@mac.com"
    gem.homepage = "http://github.com/hessml/ffi-opencl"
    gem.authors = ["Martin Hess"]
    gem.rubyforge_project = "ffi-opencl"
    gem.add_dependency('ffi', '>= 0.3.0')
    gem.requirements << 'libffi'
    gem.requirements << 'swig'
    gem.requirements << 'opencl 1.0 driver'
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end

  Jeweler::RubyforgeTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end



task :default => :spec
require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION.yml')
    config = YAML.load(File.read('VERSION.yml'))
    version = "#{config[:major]}.#{config[:minor]}.#{config[:patch]}"
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "ffi-opencl #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

# Load the other rake files in the tasks folder
require 'fileutils'
require 'find'
begin
    tasks_dir = File.join(File.expand_path(File.dirname(__FILE__)), "/tasks")
    rakefiles = Dir.glob(File.join(tasks_dir, '*.rake')).sort
    import(*rakefiles)
rescue 
    puts "Problem importing tasks/*.rake"
end


