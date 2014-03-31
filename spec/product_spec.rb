require 'capybara/rspec'
require 'spec_helper'
require_relative '../app'

Capybara.app = App

feature "Product Manager" do

  scenario "User sees Welcome on the homepage" do
    visit '/'
    within("h1") do
      expect(page).to have_content "Welcome"
    end
  end

end