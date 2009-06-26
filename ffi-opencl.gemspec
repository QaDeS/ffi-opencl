# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ffi-opencl}
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Martin Hess"]
  s.date = %q{2009-06-25}
  s.email = %q{martinhes@mac.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "examples/capabilities.rb",
     "ffi-opencl.gemspec",
     "interfaces/cl.h",
     "interfaces/cl.i",
     "interfaces/cl_gl.h",
     "interfaces/cl_platform.h",
     "lib/ffi-opencl.rb",
     "lib/ffi-opencl/cl.rb",
     "lib/ffi-opencl/platform.rb",
     "spec/ffi-opencl_spec.rb",
     "spec/spec_helper.rb",
     "tasks/generator.rake",
     "test/ffi-opencl_test.rb",
     "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/hessml/ffi-opencl}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.requirements = ["libffi", "swig", "opencl 1.0 driver"]
  s.rubyforge_project = %q{ffi-opencl}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}
  s.test_files = [
    "spec/ffi-opencl_spec.rb",
     "spec/spec_helper.rb",
     "test/ffi-opencl_test.rb",
     "test/test_helper.rb",
     "examples/capabilities.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>, [">= 0.3.0"])
    else
      s.add_dependency(%q<ffi>, [">= 0.3.0"])
    end
  else
    s.add_dependency(%q<ffi>, [">= 0.3.0"])
  end
end
