require 'spec_helper'
require 'tilt/erubis'
# require 'capybara/dsl'
# require 'selenium-webdriver'


feature 'Users enter their names' do

# before do
#     include Capybara::DSL
#     Capybara.default_driver = :selenium
#  end


  scenario 'both players fill in forms and submit' do
    # save_and_open_page
    visit '/'
    fill_in 'player1', with: 'Bob'
    fill_in 'player2', with: 'John'
    click_button('Submit')
    expect(page).to have_content('Bob vs. John')
  end

end
