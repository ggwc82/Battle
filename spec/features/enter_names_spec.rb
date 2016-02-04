require 'capybara/dsl'
require 'selenium-webdriver'

def browser_view
  include Capybara::DSL
  Capybara.default_driver = :selenium
end

feature 'Enter names' do

  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Rebecca'
    fill_in :player_2_name, with: 'Valentina'
    click_button 'Submit'
    expect(page).to have_content 'Rebecca vs. Valentina'
  end
end

feature 'View player 2 Hit Points' do

  scenario 'see player 2 hit points' do
    browser_view
    visit('/')
    fill_in :player_1_name, with: 'Rebecca'
    fill_in :player_2_name, with: 'Valentina'
    click_button 'Submit'
    expect(page).to have_content 'Valentina: 100HP'
  end
end