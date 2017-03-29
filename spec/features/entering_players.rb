require 'app'

feature 'Testing player names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :Player_1, with: 'Alfred'
    fill_in :Player_2, with: 'Pesto'
    click_button 'Submit'
    expect(page).to have_content("Alfred vs. Pesto")
 end
end
