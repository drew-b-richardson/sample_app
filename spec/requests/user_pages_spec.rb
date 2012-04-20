require 'spec_helper'

describe "User pages" do
  subject { page }

  describe "signup page" do
    before { visit signup_path }
    it { should have_selector("title",:text => "Sign up") }
    it { should have_selector("h1",:text => "Sign up") }
                              
                              

    #shave_selector
    #shave_content
  end
end
