require 'capybara/dsl'
require 'selenium-webdriver'


feature 'Enter names' do
  before do
    include Capybara::DSL
    Capybara.default_driver = :selenium
  end

  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Rebecca'
    fill_in :player_2_name, with: 'Valentina'
    click_button 'Submit'
    expect(page).to have_content 'Rebecca vs. Valentina'
  end
end