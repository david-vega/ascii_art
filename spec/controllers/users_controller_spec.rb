require 'spec_helper'

describe UsersController do
  let(:valid_attributes) { { "name" => "MyString" } }
  let(:valid_session) { {} }

  describe "GET show" do
    it "assigns the requested user as @user" do
      user = User.create! valid_attributes
      get :show, {:id => user.to_param}, valid_session
      assigns(:user).should eq(user)
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested user" do
      user = User.create! valid_attributes
      expect {
        delete :destroy, {:id => user.to_param}, valid_session
      }.to change(User, :count).by(-1)
    end

    it "redirects to the users list" do
      user = User.create! valid_attributes
      delete :destroy, {:id => user.to_param}, valid_session
      response.should redirect_to(users_url)
    end
  end

end
