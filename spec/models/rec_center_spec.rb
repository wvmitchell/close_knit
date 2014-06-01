require 'spec_helper'

describe RecCenter do
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:lat)}
  it {should validate_presence_of(:lng)}
  it {should validate_presence_of(:facilities)}
  it {should validate_presence_of(:programs)}
  it {should validate_presence_of(:phone)}
  it {should validate_presence_of(:address)}
end
