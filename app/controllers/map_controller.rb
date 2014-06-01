class MapController < ApplicationController
  def index
  end

  def get_scores
    render text: CrimeScore.scores.to_json
  end
end
