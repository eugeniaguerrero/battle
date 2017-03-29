def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Alfred'
  fill_in :player_2, with: 'Pesto'
  click_button 'Submit'
end
