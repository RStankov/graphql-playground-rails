require 'spec_helper'

RSpec.describe GraphqlPlayground::Rails do
  it 'defines Engine' do
    expect(described_class::Engine).to be_present
  end
end
