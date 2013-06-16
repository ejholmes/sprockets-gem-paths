require 'sprockets'

module Sprockets
  module GemPaths
    def self.rubygems_latest_specs
      # If newer Rubygems
      if ::Gem::Specification.respond_to? :latest_specs
        ::Gem::Specification.latest_specs
      else
        ::Gem.source_index.latest_specs
      end
    end

    def append_gem_paths
      try_paths = [
        %w{ assets },
        %w{ app },
        %w{ app assets },
        %w{ vendor },
        %w{ vendor assets },
        %w{ lib },
        %w{ lib assets }
      ].inject([]) do |sum, v|
        sum + [
          File.join(v, 'javascripts'),
          File.join(v, 'stylesheets'),
          File.join(v, 'images'),
          File.join(v, 'fonts')
        ]
      end

      (Sprockets::GemPaths.rubygems_latest_specs.map(&:full_gem_path)).each do |root_path|
        try_paths.map {|p| File.join(root_path, p) }.
          select {|p| File.directory?(p) }.
          each {|path| append_path(path) }
      end
    end
  end
end

Sprockets::Environment.send :include, Sprockets::GemPaths
