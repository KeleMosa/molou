require 'spec_helper'

describe "StaticPages" do

	subject { page }

	describe "Home page" do
	before { visit root_path }
	
		it { should have_selector('h1',text: 'Molou Computing') }
		it { should have_selector('title', text: full_title('')) }
		it { should_not have_selector('title', text: '| Home') }
	end
	
	describe "About page" do
	before { visit about_path }
		
		it { should have_selector('h1',text: 'About us') }
		it { should have_selector('title', text: ('About us')) }
		
	end
	
	describe "Services" do
	before { visit services_path }
		
		it { should have_selector('h1',text: 'Our services') }
		it { should have_selector('title',	text: ('Services')) }
		
	end
		describe "Contact page" do
	before { visit contact_path }
		
		it { should have_selector('h1',text: 'Contact us') }
		it { should have_selector('title', text: ('Contact us')) }
		
	end
end
