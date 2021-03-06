require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      title: 'My String',
      city: 'My city',
      state: 'My state',
      text: 'My Text'
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do
      assert_select "input#post_title[name=?]", "post[title]"
      assert_select "textarea#post_text[name=?]", "post[text]"
      assert_select "input#post_city[name=?]", "post[city]"
      assert_select "input#post_state[name=?]", "post[state]"
    end
  end
end
