require 'rails_helper'

describe PagesController do

  describe '#index' do

    it "allows non-logged in students to see index" do
      get :index
      expect(response).to be_success
    end

  end



end
