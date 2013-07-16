require 'spec_helper'

describe "posts/show" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      title: 'My String',
      city: 'My city',
      state: 'My state',
      text: 'My Text'
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/My Text/)
    rendered.should match(/My city/)
    rendered.should match(/My state/)
  end
end
