require 'rails_helper'

RSpec.describe MessagesController, :type => :controller do 
  describe 'GET #index' do
    it 'responds with a 200' do
      get :index
      expect(response).to be_success
    end
  end
end