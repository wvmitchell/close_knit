require 'spec_helper'

describe Park do
  it {should validate_presence_of(:lat)}
  it {should validate_presence_of(:lng)}
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:facilities)}
end
