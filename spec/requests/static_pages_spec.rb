require 'spec_helper'

describe "Static Pages" do

  subject { page }

  describe "Home page" do
  
    before { visit root_path }
    
    it { should have_selector("h1", :text => "Sonar") }
    it { should have_selector("title", :text => full_title("")) }
    it { should_not have_selector("title", :text => "| Welcome!") }
  end
  
  describe "Help page" do
  
    before { visit help_path }
    
    it { should have_selector("h1", :text => "Help") }
    it { should have_selector("title", :text => full_title("Help")) }
  end
  
  describe "About page" do
  
    before { visit about_path }
    
    it { should have_selector("h1", :text => "About Sonar")}
    it { should have_selector("title", :text => full_title("About")) }
  end
  
  describe "Contact page" do
  
    before { visit contact_path }
    
    it { should have_selector("title", :text => full_title("Contact")) }
  end
  
end
