require 'spec_helper'

describe Property do
  it {should validate_presence_of(:lat)}
  it {should validate_presence_of(:lng)}
  it {should validate_presence_of(:value)}
  it {should validate_presence_of(:address)}
end
