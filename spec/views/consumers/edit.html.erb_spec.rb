require 'rails_helper'

RSpec.describe "consumers/edit", type: :view do
  before(:each) do
    @consumer = assign(:consumer, Consumer.create!())
  end

  it "renders the edit consumer form" do
    render

    assert_select "form[action=?][method=?]", consumer_path(@consumer), "post" do
    end
  end
end
