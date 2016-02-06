require 'rails_helper'

RSpec.describe Project do
  it "should be valid" do
    expect(build(:project)).to be_valid
  end
end
