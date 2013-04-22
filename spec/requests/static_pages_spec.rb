require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do
		it "should have the h1 'Welcome to Molou Computing Solutions'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Welcome to Molou Computing Solutions')
		end
		it "should have the base title" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "Molou Computing")
		end
		it "should not have a custom page title" do
			visit '/static_pages/home'
			page.should_not have_selector('title', :text => '| Home')
		end
	end
	
	describe "About page" do
		it "should have the h1 'About us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About us')
		end
		it "should have the base title" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "About us")
		end
	end
	
	describe "Services page" do
		it "should have the h1 'Our services'" do
			visit '/static_pages/services'
			page.should have_selector('h1', :text => 'Our services')
		end
		it "should have the base title" do
			visit '/static_pages/services'
			page.should have_selector('title', :text => "Services")
		end
	end
	
	describe "Contact page" do
		it "should have the h1 'Contact us'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact us')
		end
		it "should have the base title" do
			visit '/static_pages/contact'
			page.should have_selector('title', :text => "Contact us")
		end
	end
end
