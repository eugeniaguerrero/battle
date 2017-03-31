feature 'Initial switching of turns' do
  scenario 'switching from alfred to pesto' do
    sign_in_and_play
    click_button "Attack!"
    click_button "Back"
    click_button "Attack!"
    expect(page).to have_content("Attacked Alfred!")
  end
end
