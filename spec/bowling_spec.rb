require 'bowling'
require 'baseball'
require "rails_helper"

RSpec.describe Bowling, "#score" do
  context "with no strikes or spares" do
    it "sums the pin count for each roll" do
      bowling = Bowling.new
      20.times { bowling.hit(4) }
      expect(bowling.score).to eq 80
    end
  end
end

RSpec.describe Baseball, "#score" do
  context "bases loaded" do
    it "describes score after a home run (bases loaded)" do
      baseball = Baseball.new
      7.times { baseball.hit(1) }
      expect(baseball.score).to eq 7
    end
  end
end

RSpec.shared_examples "collections" do
  it "is empty when first created" do
    expect(described_class.new).to be_empty
  end
end

RSpec.describe Array do
  include_examples "collections"
end

RSpec.describe Hash do
  include_examples "collections"
end
