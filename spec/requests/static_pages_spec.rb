require 'spec_helper'



describe "Static pages" do
  let(:staticpagespath) {"/static_pages/"}
  let(:objtitle) { "Ruby on Rails Tutorial Sample App | " }

  describe "Home page" do
    it "should have the h1 'Sample App'" do
      visit "#{staticpagespath}home"
      page.should have_selector('h1',
                                :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit "#{staticpagespath}home"
      page.should have_title("#{objtitle}Home")
    end
  end


  describe "Help page" do
    let(:helpvar) { "Help" }
    it "should have the h1 'Help'" do
      visit "#{staticpagespath}help"
      page.should have_selector('h1',
                                :text => "#{helpvar}")
    end


    it "should have the title 'Help'" do
      visit "#{staticpagespath}help"
      page.should have_title("#{objtitle}#{helpvar}")
    end

  end

  describe "About page" do
    let(:aboutvar) { "About Us" }
    it "should have the h1 'About Us'" do
      visit "#{staticpagespath}about"
      page.should have_selector('h1',
                                :text => "#{aboutvar}")
    end


    it "should have the title 'Home'" do
      visit "#{staticpagespath}about"
      page.should have_title("#{objtitle}#{aboutvar}")
    end

  end

  describe "Contact page" do
    let(:contactvar) { "Contact"}
    it "should have the h1 'Contact'" do
      visit "#{staticpagespath}contact"
      page.should have_selector('h1',
                                :text => "#{contactvar}")
    end


    it "should have the title 'Contact'" do
      visit "#{staticpagespath}contact"
      page.should have_title("#{objtitle}#{contactvar}")
    end

  end
end