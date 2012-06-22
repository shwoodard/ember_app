require 'spec_helper'

describe "When loading the app" do
  it 'should load the page' do
    visit root_path
    page.should have_css('h1', :text => "Application")
  end
end
