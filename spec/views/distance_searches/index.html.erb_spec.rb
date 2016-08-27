require 'rails_helper'

RSpec.describe "distance_searches/index", type: :view do
  before(:each) do
    assign(:distance_searches, [
      DistanceSearch.create!(
        :source_zip_code => 2,
        :destination_zip_code => 3,
        :calculated_distance => 4.5
      ),
      DistanceSearch.create!(
        :source_zip_code => 2,
        :destination_zip_code => 3,
        :calculated_distance => 4.5
      )
    ])
  end

  it "renders a list of distance_searches" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
  end
end
