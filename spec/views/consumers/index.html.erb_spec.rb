require 'rails_helper'

RSpec.describe "consumers/index", type: :view do
  before(:each) do
    assign(:consumers, [
      Consumer.create!(),
      Consumer.create!()
    ])
  end

  it "renders a list of consumers" do
    render
  end
end
