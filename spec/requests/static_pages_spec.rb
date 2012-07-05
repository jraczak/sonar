require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do
  
    it "should have the content 'Sonar'" do
      visit "/static_pages/home"
      page.should have_selector("h1", :text => "Sonar")
    end
      
    it "should have the base title" do
      visit "/static_pages/home"  
      page.should have_selector("title", :text => "Sonar")
    end
    
    it "should not have a custom page title" do
      visit "/static_pages/home"
      page.should_not have_selector("title", :text => "| Welcome!")
    end
  end
  
  describe "Help page" do
  
    it "should have the content 'Help'" do
      visit "/static_pages/help"
      page.should have_selector("h1", :text => "Help")
    end
    
    it "should have the full title" do
      visit "/static_pages/help"
      page.should have_selector("title", :text => "Sonar | Help")
    end
  end
  
  describe "About page" do
  
    it "should have the content 'About Sonar'" do
      visit "/static_pages/about"
      page.should have_selector("h1", :text => "About Sonar")
    end
    
    it "should have the full title" do
      visit "/static_pages/about"
      page.should have_selector("title", :text => "Sonar | About")
    end
  end
  
  describe "Contact page" do
  
    it "should have the content 'Contact'" do
      visit "/static_pages/contact"
      page.should have_selector("title", :text => "Sonar | Contact")
    end
  end
  
end
