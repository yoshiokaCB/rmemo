require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  include ::Devise::Test::ControllerHelpers
  # include 'Devise::Test::ControllerHelpers'

  # before do
  #   sign_in
  # end
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
