require 'spec_helper'

describe Crime do
  let(:crime) {FactoryGirl.create(:crime)}

  it {should validate_presence_of(:lat)}
  it {should validate_presence_of(:lng)}
  it {should validate_presence_of(:offense)}
  it {should validate_presence_of(:time)}
  it {should validate_presence_of(:neighborhood)}
end
