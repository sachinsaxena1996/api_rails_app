require 'rails_helper'

RSpec.describe "distance_searches/new", type: :view do
  before(:each) do
    assign(:distance_search, DistanceSearch.new(
      :source_zip_code => 1,
      :destination_zip_code => 1,
      :calculated_distance => 1.5
    ))
  end

  it "renders new distance_search form" do
    render

    assert_select "form[action=?][method=?]", distance_searches_path, "post" do

      assert_select "input#distance_search_source_zip_code[name=?]", "distance_search[source_zip_code]"

      assert_select "input#distance_search_destination_zip_code[name=?]", "distance_search[destination_zip_code]"

      assert_select "input#distance_search_calculated_distance[name=?]", "distance_search[calculated_distance]"
    end
  end
end
