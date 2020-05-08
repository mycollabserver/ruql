require './lib/ruql/version.rb'

Gem::Specification.new do |s|
  s.name        = 'ruql'
  s.version     = Ruql::VERSION
  s.summary     = "Ruby question language"
  s.description = "Ruby-embedded DSL for creating short-answer quiz questions"
  s.authors     = ["Armando Fox"]
  s.email       = 'fox@berkeley.edu'
  s.files = []
  s.files       << 'lib/ruql.rb'
  s.files       << 'lib/ruql/version.rb'
  s.files +=  %w(quiz answer dropdown fill_in multiple_choice
                     question quiz renderer
                     select_multiple tex_output true_false).
    map { |s| "lib/ruql/#{s}.rb" }
  s.files += %w(criterion open_assessment option training training_criterion).
    map { |s| "lib/ruql/open_assessment/#{s}.rb" }
  s.files += %w(auto_qcm_renderer edxml_renderer html5_renderer html_form_renderer
                     json_renderer qualtrics_renderer xml_renderer).
    map { |s| "lib/ruql/renderers/#{s}.rb" }
  # add the templates
  s.files += Dir["templates/*.erb"]
  s.executables << 'ruql'
  # dependencies
  s.add_runtime_dependency 'builder', '~> 3.0'
  s.add_runtime_dependency 'getopt', '1.4.2'
  s.homepage    = 'http://github.com/saasbook/ruql'
  s.license       = 'CC By-SA'
end
