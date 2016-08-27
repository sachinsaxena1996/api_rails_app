require 'rails_helper'

RSpec.describe "consumers/new", type: :view do
  before(:each) do
    assign(:consumer, Consumer.new())
  end

  it "renders new consumer form" do
    render

    assert_select "form[action=?][method=?]", consumers_path, "post" do
    end
  end
end
