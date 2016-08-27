require 'rails_helper'

RSpec.describe "DistanceSearches", type: :request do
  describe "GET /distance_searches" do
    it "works! (now write some real specs)" do
      get distance_searches_path
      expect(response).to have_http_status(200)
    end
  end
end
