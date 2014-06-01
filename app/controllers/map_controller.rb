class MapController < ApplicationController
  def index
  end

  def get_scores
    render text: Neighborhood.first.scores.to_json
  end
end
