require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      title: 'My String',
      city: 'My city',
      state: 'My state',
      text: 'My Text'
    ).as_new_record)
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "input#post_title[name=?]", "post[title]"
      assert_select "textarea#post_text[name=?]", "post[text]"
      assert_select "input#post_city[name=?]", "post[city]"
      assert_select "input#post_state[name=?]", "post[state]"
    end
  end
end
