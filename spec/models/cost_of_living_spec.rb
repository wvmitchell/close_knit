require 'spec_helper'

describe CostOfLiving do

  let(:cost_of_living) {FactoryGirl.create(:cost_of_living)}

  it 'has a associated score' do
    cost_of_living.score.should_not be(nil)
  end

end
