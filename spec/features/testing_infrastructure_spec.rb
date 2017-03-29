feature 'Testing player names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content("Alfred vs. Pesto")
 end
end

feature "Viewing hit points" do
  scenario "viewing Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Pesto: 80HP")
  end
end
