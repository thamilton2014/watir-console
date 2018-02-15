require "spec_helper"

RSpec.describe Watir::Console do
  it "has a version number" do
    expect(Watir::Console::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
