require 'spec_helper'

describe "Static pages" do
  before {visit root_path}

  let(:base_title) { "Suppliers Portal" }
  subject{page}
  
  describe "Home page" do
    it {should have_selector('h1',text: 'Suppliers Portal')}
    it {should have_selector('title',
                       text: full_title(''))}     
  end
  
  describe "Help page" do
    before {visit help_path}
    it {should have_selector('h1',text: 'Help')}
    it {should have_selector('title',
                       text: full_title(''))}     
  end
   
  describe "Supplier Quality Requirements page" do
    before{visit sqr_path}
    it {should have_selector('h1',text: 'Supplier Quality Requirements')}
    it {should have_selector('title',
                       text: full_title(''))}     

  end

  describe "Contact page" do
    before {visit contact_path}
    it {should have_selector('h1',text: 'Contact')}
    it {should have_selector('title',
                       text: full_title(''))}     

  end

     
end