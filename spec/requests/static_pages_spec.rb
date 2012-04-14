require 'spec_helper'
describe "Static Pages" do  #use class name you're describing in your tests
  describe "Home Page" do
    it "should have the content 'Home Page'" do
      visit '/static_pages/home'
      page.should have_selector("h1",
                                :text => "Sample App")
    end
    it "should have the correct title" do
      visit '/static_pages/home'
      page.should have_selector("title",
                                :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have the custom |home in the title" do
      visit "/static_pages/home"
      page.should_not have_selector("title",
                                :text => "| Home")
    end
  end

  describe "about page" do  #use class name you're describing or just a string 
    it "should have the title of About" do
      visit '/static_pages/about'
      page.should have_selector("title",
                                :text => "About")
    end
  end
end
