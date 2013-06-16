require 'spec_helper'

describe Sprockets::Environment do
  let(:environment) { described_class.new }

  describe '.append_gem_paths' do
    it 'adds paths to gems' do
      environment.append_gem_paths
      environment.paths.should have(1).path
    end
  end
end
