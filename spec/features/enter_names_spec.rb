require 'capybara/dsl'
require 'selenium-webdriver'

def browser_view
  include Capybara::DSL
  Capybara.default_driver = :selenium
end

feature 'Enter names' do

  scenario 'submitting names' do

    sign_in_and_play
    expect(page).to have_content 'Rebecca vs. Valentina'
  end
end

feature 'View player 2 Hit Points' do

  scenario 'see player 2 hit points' do

    sign_in_and_play
    expect(page).to have_content 'Valentina: 100HP'
  end
end

feature 'Attack player 2 and return confirmation' do

  scenario 'confirm attack on player 2' do

    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Rebecca attacks Valentina'
  end
end

feature 'Player 2 HP is reduced' do

  scenario 'reduces player 2 HP by 10HP' do

    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Valentina: 90HP'
  end
end

feature 'Change turns' do
  scenario 'changes turns after 1 successful attack' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Change Turns'
    expect(page).to have_content 'Rebecca: 100HP'
  end
end
