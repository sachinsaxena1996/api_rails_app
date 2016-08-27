require 'rails_helper'

RSpec.describe "consumers/show", type: :view do
  before(:each) do
    @consumer = assign(:consumer, Consumer.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
