require 'rails_helper'

RSpec.describe "distance_searches/edit", type: :view do
  before(:each) do
    @distance_search = assign(:distance_search, DistanceSearch.create!(
      :source_zip_code => 1,
      :destination_zip_code => 1,
      :calculated_distance => 1.5
    ))
  end

  it "renders the edit distance_search form" do
    render

    assert_select "form[action=?][method=?]", distance_search_path(@distance_search), "post" do

      assert_select "input#distance_search_source_zip_code[name=?]", "distance_search[source_zip_code]"

      assert_select "input#distance_search_destination_zip_code[name=?]", "distance_search[destination_zip_code]"

      assert_select "input#distance_search_calculated_distance[name=?]", "distance_search[calculated_distance]"
    end
  end
end
