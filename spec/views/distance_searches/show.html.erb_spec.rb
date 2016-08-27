require 'rails_helper'

RSpec.describe "distance_searches/show", type: :view do
  before(:each) do
    @distance_search = assign(:distance_search, DistanceSearch.create!(
      :source_zip_code => 2,
      :destination_zip_code => 3,
      :calculated_distance => 4.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4.5/)
  end
end
