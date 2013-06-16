class SitesController < ApplicationController
  # GET /sites
  # GET /sites.json
  def index
    @sites = Site.first
  end
end
