# frozen_string_literal: true

require 'rake/task'
require_relative 'getters'
require_relative 'setters'
require_relative 'constructor'
require_relative 'deserialize'
require_relative 'prop_definition'
require_relative 'clone'

namespace :bench do
  task :getters do
    SorbetBenchmarks::Getters.run
  end

  task :setters do
    SorbetBenchmarks::Setters.run
  end

  task :constructor do
    SorbetBenchmarks::Constructor.run
  end

  task :deserialize do
    SorbetBenchmarks::Deserialize.run
  end

  task :prop_definition do
    SorbetBenchmarks::PropDefinition.run
  end

  task :clone do
    SorbetBenchmarks::Clone.run
  end

  task all: [:getters, :setters, :constructor, :deserialize, :prop_definition, :clone]
end
