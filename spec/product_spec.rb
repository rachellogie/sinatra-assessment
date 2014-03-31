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

  scenario "User can add a product and see it on the homepage" do
    visit '/'
    click_on "Add a Product"
    fill_in "create_product", with: "Awesome sauce"
    click_on "Create Product"
    expect(page).to have_content "Awesome sauce"
  end

end