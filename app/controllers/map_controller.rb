class MapController < ApplicationController
  def index
  end

  def get_scores
    render text: {capitol_hill: {crime: 89, recreation: 78, social: 89}}
  end
end
