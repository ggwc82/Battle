feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Rebecca'
    fill_in :player_2_name, with: 'Valentina'
    click_button 'Submit'
    expect(page).to have_content 'Rebecca vs. Valentina'
  end
end