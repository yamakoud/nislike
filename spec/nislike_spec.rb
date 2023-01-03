# frozen_string_literal: true

RSpec.describe Nislike do
  it "has a version number" do
    expect(Nislike::VERSION).not_to be nil
  end

  it "raises error" do
    expect { Nislike.dont_use_nil(nil) }.to raise_error(Nislike::UsingNilError)
  end

  it "Doesn't raise error" do
    expect(Nislike.dont_use_nil(11)).to equal(11)
    expect(Nislike.dont_use_nil('abc')).to equal('abc')
    expect(Nislike.dun(11)).to equal(11)
    expect(Nislike.dun('abc')).to equal('abc')
  end
end
