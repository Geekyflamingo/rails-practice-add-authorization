require 'rails_helper'

describe StudentsController do

  describe "#index" do

    it "it redirects non-student to the login page" do
      get :index
      expect(response).to redirect_to(login_path)

    end

    it "allows students to see clubs page" do
      @student = Student.create!(
      name: "Rick",
      email: "Rick@aol.com",
      password: "password"
      )

      session[:student_id] = @student.id
      get :index
      expect(response.status).to eq(200)

    end

  end



end
