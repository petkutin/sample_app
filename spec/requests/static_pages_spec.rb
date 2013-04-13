require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
    it "should have the h1 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
     visit '/static_pages/home'
     page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have not have a custome page title" do 
     visit '/static_pages/home'
     page.should_not have_selector('title', :text => 'Tutorial | Home')
    end

    it "should have not have the base title" do 
     visit '/static_pages/home'
     page.should have_selector('title', :text => 'Tutorial')
    end
  end

  describe "Help page" do 
    it "should have h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => 'Tutorial | Help')
    end
  end

  describe "about page" do 
    it "should have the h1 'About us'" do 
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the title 'About us'" do 
      visit '/static_pages/about'
      page.should have_selector('title', :text => 'Tutorial | About Us')
    end
  end
end

