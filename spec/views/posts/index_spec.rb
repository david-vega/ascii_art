require 'spec_helper'

describe "posts/index" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        title: 'Title',
        city: 'My city',
        state: 'My state',
        text: 'My Text'
      ),
      stub_model(Post,
        title: 'Title',
        city: 'My city',
        state: 'My state',
        text: 'My Text'
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "h2", :text => "Title".to_s, :count => 2
    assert_select "p>pre", :text => "My Text".to_s, :count => 2
    assert_select "p>img", :alt => "Static Map of My city My state".to_s, :count => 2
  end
end
