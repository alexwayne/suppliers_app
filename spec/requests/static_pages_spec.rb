require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Suppliers Portal'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text=> 'Suppliers Portal')
    end
    
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                         :text => "Suppliers Portal | Home")
    end
  end
  
  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text=> 'Help')
    end
    
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                         :text => "Suppliers Portal | Help")
    end
  end
   
  describe "Supplier Quality Requirements page" do

    it "should have the h1 'Supplier Quality Requirements'" do
      visit '/static_pages/sqr'
      page.should have_selector('h1', :text=> 'Supplier Quality Requirements')
    end
    
    it "should have the title 'Supplier Quality Requirements'" do
      visit '/static_pages/sqr'
      page.should have_selector('title',
                         :text => "Suppliers Portal | Supplier Quality Requirements")
    end
  end


     
end