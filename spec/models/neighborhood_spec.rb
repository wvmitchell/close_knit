require 'spec_helper'

describe Neighborhood do

  let(:neighborhood) {FactoryGirl.create(:neighborhood)}

  it {should validate_presence_of(:lat)}
  it {should validate_presence_of(:lng)}
  it {should validate_presence_of(:name)}

  it '#crime_score' do
    neighborhood.crime_score.should_not be nil
  end

  it '#recreation_score' do
    neighborhood.recreation_score.should_not be nil
  end

  it '#social_score' do
    neighborhood.social_score.should_not be nil
  end

end
