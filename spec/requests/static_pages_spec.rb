require 'rails_helper'
require "support/utilities.rb"

describe "StaticPages", type: :request do

  let(:base_title) { "Ruby on Rails Training Sample App" }
  describe "Home page" do
    before { visit root_path }
    subject { page }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "help page" do
    before { visit help_path }
    subject { page }

    it { should have_content('Help') }
    it { should have_title("#{base_title} | Help") }
  end

  describe "About page" do
    before { visit about_path }
    subject { page }

    it { should have_content('About Us') }
    it { should have_title("#{base_title} | About Us") }
  end

  describe "Contact page" do
    before { visit contact_path }
    subject { page }

    it { should have_content('Contact') }
    it { should have_title("#{base_title} | Contact") }
 end

end
