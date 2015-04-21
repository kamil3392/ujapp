require 'rails_helper'

describe ArticlesController do
  before :each do 
    create(:article)
  end  
  describe 'index' do
    it 'return articles' do
      get :index
      
      expect(response).to have_http_status(:success)
      expect(assigns(:articles).length).to eq 1
    end  
  end

end  